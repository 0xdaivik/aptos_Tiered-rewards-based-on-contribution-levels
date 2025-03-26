# Aptos Tiered Rewards Smart Contract

## Description
A lightweight Aptos Move smart contract that implements a dynamic tiered rewards system based on user contributions. The contract allows tracking of user contributions and automatically assigns reward tiers based on total contribution amounts.

## Vision
The Tiered Rewards contract aims to create a transparent and motivational contribution mechanism that:
- Encourages sustained participation
- Provides clear incentive structures
- Enables dynamic recognition of contributor efforts
- Supports flexible reward allocation based on contribution levels

## Contract Details
### Contribution Tiers
- **Basic Tier (0)**: < 100 tokens
- **Silver Tier (1)**: ≥ 100 tokens
- **Gold Tier (2)**: ≥ 500 tokens
- **Platinum Tier (3)**: ≥ 1000 tokens

### Key Structures
- `Contributor`: Stores individual contributor information
  - `total_contributed`: Tracks total tokens contributed
  - `tier`: Current reward tier of the contributor

### Primary Functions
- `contribute()`: Allows users to contribute tokens and automatically update their tier
- `determine_tier()`: Internal function to calculate contributor's tier based on total contribution

## Future Scope
1. **Enhanced Reward Mechanisms**
   - Implement token-based rewards for each tier
   - Create custom privileges or access rights for higher tiers
   - Design multi-project contribution tracking

2. **Advanced Features**
   - Add time-based decay for contributions
   - Implement withdrawal and transfer of contribution records
   - Create governance mechanisms for tier thresholds

3. **Ecosystem Integration**
   - Develop companion contracts for reward distribution
   - Create interfaces for external project integrations
   - Build analytics dashboards for contribution tracking

## Getting Started
### Prerequisites
- Aptos CLI
- Move compiler
- Aptos development environment

### Installation
1. Clone the repository
2. Compile the Move contract
3. Deploy to Aptos network

## Contributing<img width="1440" alt="Screenshot 2025-03-26 at 11 01 13 AM" src="https://github.com/user-attachments/assets/86e451b7-5b09-4b13-98ce-559e2aaf47cb" />
<img width="1440" alt="Screenshot 2025-03-26 at 11 01 13 AM" src="https://github.com/user-attachments/assets/fa55f4bb-bdda-4ff4-801c-d4c68c3dbfb8" />

Contributions are welcome! Please feel free to submit a Pull Request.


## Contract Address
0x224fd1e0ba2cc8795a6190668030e3f8e746c596dbf586bcc141fb436acc6883
