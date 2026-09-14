# Sorowan

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Contract on Stellar Testnet](https://img.shields.io/badge/network-testnet-purple)](https://stellar.expert/explorer/testnet/contract/CBXKUSLQPVF35FYURR5C42BPYA5UOVDXX2ELKIM2CAJMCI6HXG2BHGZA)
[![Contract on Stellar Mainnet](https://img.shields.io/badge/network-mainnet-green)](https://stellar.expert/explorer/public/contract/CDXINK2T3P46M4LWK35FVIXXHJ2XHAS4FOVCGVPJ63YV5OVTM24IY5BI)

> Decentralized project governance and on-chain version control built on Stellar's Soroban smart contract platform.

Sorowan provides cryptographic proof of code integrity and transparent governance for open-source projects — offering immutable commit tracking, community-driven proposals, and privacy-preserving anonymous voting.

---

## Table of Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Features](#features)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running Locally](#running-locally)
- [Environment Variables](#environment-variables)
- [Contributing](#contributing)
- [License](#license)

---

## Overview

Sorowan connects open-source project governance to the Stellar blockchain. Every code commit, proposal, and vote is recorded on-chain — making project history immutable, transparent, and tamper-proof.

---

## Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                         Sorowan Platform                        │
└─────────────────────────────────────────────────────────────────┘
         │                      │                      │
         ▼                      ▼                      ▼
┌─────────────────┐   ┌──────────────────┐   ┌─────────────────┐
│    dapp/        │   │  contracts/      │   │   sorowan/      │
│  Astro + React  │   │  sorowan         │   │  Python Backend │
│  Frontend UI    │   │  Rust / Soroban  │   │  Event Indexer  │
└────────┬────────┘   └────────┬─────────┘   └────────┬────────┘
         │                     │                       │
         │         ┌───────────┴───────────┐           │
         │         │   Stellar Blockchain   │           │
         │         │   Soroban Smart        │           │
         └────────►│   Contracts            │◄──────────┘
                   └───────────┬───────────┘
                               │
              ┌────────────────┼────────────────┐
              ▼                ▼                 ▼
   ┌──────────────────┐ ┌──────────────┐ ┌─────────────────┐
   │  Version Control │ │  Governance  │ │   Membership    │
   │  Commit Tracking │ │  Proposals & │ │  Role-based     │
   │  On-chain Hashes │ │  Voting      │ │  Access Control │
   └──────────────────┘ └──────────────┘ └─────────────────┘
              │                │
              ▼                ▼
   ┌──────────────────┐ ┌──────────────┐
   │  Soroban Domains │ │     IPFS     │
   │  Name Registry   │ │  Decentraliz │
   │  Anti-squatting  │ │  ed Storage  │
   └──────────────────┘ └──────────────┘
```

---

## Features

| Feature | Description |
|---|---|
| **On-chain Version Control** | Immutable commit hash tracking tied to your project |
| **Decentralized Governance** | Community proposals with public and anonymous voting |
| **Anonymous Voting** | Privacy-preserving votes using cryptographic commitment schemes |
| **Membership System** | Role-based access control with achievement badges |
| **Domain Integration** | Soroban Domains prevent name squatting and ensure authenticity |
| **IPFS Storage** | Decentralized content storage for proposals and project metadata |
| **Real-time Events** | Instant updates through blockchain event streaming |

---

## Project Structure

```
sorowan/
├── contracts/              # Rust smart contracts (Soroban)
│   └── sorowan/
│       └── src/
│           ├── contract_dao.rs
│           ├── contract_membership.rs
│           ├── contract_versioning.rs
│           ├── contract_tansu.rs
│           └── tests/
├── dapp/                   # Frontend (Astro + React + TailwindCSS)
│   ├── src/
│   │   ├── components/
│   │   ├── pages/
│   │   ├── service/
│   │   └── contracts/
│   └── packages/sorowan/   # Shared JS SDK
├── sorowan/                # Python event indexer (FastAPI)
│   └── src/sorowan/events/
├── website/                # Documentation site (Docusaurus)
├── tools/                  # Utility scripts
└── pre-commit/             # Git hooks
```

---

## Getting Started

### Prerequisites

- [Node.js](https://nodejs.org/) v18+
- [npm](https://www.npmjs.com/) v9+
- [Rust](https://www.rust-lang.org/) (for contract development)
- [Stellar CLI](https://developers.stellar.org/docs/tools/stellar-cli)

### Installation

```bash
# Clone the repository
git clone https://github.com/sorowan/sorowan-master.git
cd sorowan-master

# Install dapp dependencies
cd dapp
npm install --legacy-peer-deps
```

### Running Locally

```bash
# From the dapp/ directory
npm run dev
```

The app will be available at **http://localhost:4321**

---

## Environment Variables

Copy `dapp/.env.example` to `dapp/.env` and fill in the values:

```env
PUBLIC_SOROBAN_NETWORK_PASSPHRASE="Test SDF Network ; September 2015"
PUBLIC_SOROBAN_RPC_URL="https://soroban-testnet.stellar.org:443"
PUBLIC_HORIZON_URL=https://horizon-testnet.stellar.org
PUBLIC_SOROWAN_CONTRACT_ID="<your_contract_id>"
PUBLIC_SOROBAN_DOMAIN_CONTRACT_ID="<domain_contract_id>"
PUBLIC_SOROWAN_OWNER_ID="<owner_stellar_address>"
PUBLIC_DELEGATION_API_URL="<ipfs_delegation_url>"
```

---

## Contributing

Contributions are welcome. Please read [CONTRIBUTING.md](CONTRIBUTING.md) if present, then:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-feature`)
3. Commit your changes (`git commit -m 'Add my feature'`)
4. Push to the branch (`git push origin feature/my-feature`)
5. Open a Pull Request

---

## License

This project is licensed under the **Apache License 2.0**.
See the [LICENSE](LICENSE) file for details.

```
Copyright 2024 Sorowan Contributors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
