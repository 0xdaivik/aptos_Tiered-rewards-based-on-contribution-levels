module MyModule::TieredRewards {
    use std::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct to track contributor details and reward tiers
    struct Contributor has store, key {
        total_contributed: u64,
        tier: u8,
    }

    /// Reward tiers based on contribution levels
    const TIER_1_THRESHOLD: u64 = 100;
    const TIER_2_THRESHOLD: u64 = 500;
    const TIER_3_THRESHOLD: u64 = 1000;

    /// Function to contribute and assign reward tiers
    public entry fun contribute(contributor: &signer, amount: u64) acquires Contributor {
        let contributor_addr = signer::address_of(contributor);

        // Check if contributor exists, if not create new record
        if (!exists<Contributor>(contributor_addr)) {
            move_to(contributor, Contributor {
                total_contributed: amount,
                tier: determine_tier(amount)
            });
        } else {
            // Update existing contributor's details
            let contributor_record = borrow_global_mut<Contributor>(contributor_addr);
            contributor_record.total_contributed = contributor_record.total_contributed + amount;
            contributor_record.tier = determine_tier(contributor_record.total_contributed);
        }
    }

    /// Determine reward tier based on total contribution
    fun determine_tier(total_amount: u64): u8 {
        if (total_amount >= TIER_3_THRESHOLD) {
            3  // Platinum tier
        } else if (total_amount >= TIER_2_THRESHOLD) {
            2  // Gold tier
        } else if (total_amount >= TIER_1_THRESHOLD) {
            1  // Silver tier
        } else {
            0  // Basic tier
        }
    }
}