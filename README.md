### Data-Driven Electrolyte Design for Initially Anode-Free Sodium Metal Batteries: MD Simulation Data

This repository contains the molecular dynamics (MD) inputs, final configurations, run files and analysis data for the simulations in the paper *Data-Driven Electrolyte Design for Initially Anode-Free Sodium Metal Batteries*. All simulations were run with GROMACS using OPLS-based force fields.

All paths below are relative to the repository root. Some folder names contain spaces, so put quotes around paths on the command line (for example cd "LEs-THF System/replicate_1").

---

To verify if inputs resolve, run from repo root

```bash
bash verify_inputs.sh
```

This runs `gmx grompp` on every topology in the repository, using its starting configuration and `Molecular Dynamics Parameters/prod.mdp`. All 34 systems currently pass (tested with GROMACS 2021).

---

Table of Contents

| Folder | Contents |
|---|---|
| `Force Fields/` | All force-field files, included in `topol.top` by relative paths |
| `Molecular Dynamics Parameters/` | `.mdp` files for each stage: `minim.mdp` → `nvt_equil.mdp` → `npt_equil.mdp` → `prod.mdp` |
| `PDBs/` | Molecular structures |
| `LEs System/` | LEs electrolyte, two independent replicates |
| `LEs-THF System/` | LEs-THF electrolyte, two independent replicates |
| `Single Component Systems/1M/`, `.../2M/` | 1M and 2M NaPF6 in each solvent, two independent replicates each |
| `DEE Systems/` | Five DEE and non-DEE systems, folder names give the solvents mole fractions |
| `verify_inputs.sh` | Checks that every archived input resolves |

File Definitions

| File | Meaning |
|---|---|
| `topol.top` | Topology (includes files from `Force Fields/`) |
| `initial_configuration.gro` | Starting configuration for replicate 1 (DEE Systems: `sys.gro`) |
| `initial_configuration2.gro` | Starting configuration for replicate 2 (if not in separate folder) |
| `index.ndx`, `index2.ndx` | Index groups used for the analysis of replicate 1 and replicate 2 |
| `prod/` | Production run, replicate 1: `prod.tpr` (run input), `mdout.mdp` (exact parameters used), `prod.gro` (final configuration), `prod.edr` (energy time series), `prod.log`, `prod.cpt` (checkpoint) |
| `prod2/` | Same as `prod/`, for replicate 2 (if not in separate folder) |
| `analysis/`, `analysis2/` | Na⁺ and P (PF6⁻) radial distribution functions (`rdf_*.csv`) and cumulative distribution functions (`cdf_*.csv`) for replicate 1 and replicate 2|



## Figure/Table File Locations

### Main text

**Figure 4c**: snapshot of the LEs-THF system
- `LEs-THF System/replicate_1/initial_configuration.gro`

**Figure 4d**: summary RDFs/CDFs
- `LEs-THF System/replicate_1/prod/prod.gro`
- `LEs-THF System/replicate_1/analysis/cdf_LEs-THF_Na.csv`
- `LEs System/replicate_1/prod/prod.gro`
- `LEs System/replicate_1/analysis/cdf_LEs_Na.csv`

**Figure 4e** (Na⁺ CDFs, both replicates)
- Replicate 1:
  - `LEs-THF System/replicate_1/prod/prod.gro`
  - `LEs-THF System/replicate_1/analysis/cdf_LEs-THF_Na.csv`
  - `LEs System/replicate_1/prod/prod.gro`
  - `LEs System/replicate_1/analysis/cdf_LEs_Na.csv`
- Replicate 2:
  - `LEs-THF System/replicate_2/prod/prod.gro`
  - `LEs-THF System/replicate_2/analysis/cdf_LEs-THF_Na_r2.csv`
  - `LEs System/replicate_2/prod/prod.gro`
  - `LEs System/replicate_2/analysis/cdf_LEs_Na_r2.csv`

**Figure 4f** (PF6⁻ CDFs, both replicates)
- Replicate 1:
  - `LEs-THF System/replicate_1/prod/prod.gro`
  - `LEs-THF System/replicate_1/analysis/cdf_LEs-THF_P.csv`
  - `LEs System/replicate_1/prod/prod.gro`
  - `LEs System/replicate_1/analysis/cdf_LEs_P.csv`
- Replicate 2:
  - `LEs-THF System/replicate_2/prod/prod.gro`
  - `LEs-THF System/replicate_2/analysis/cdf_LEs-THF_P_r2.csv`
  - `LEs System/replicate_2/prod/prod.gro`
  - `LEs System/replicate_2/analysis/cdf_LEs_P_r2.csv`

### Supplementary Information

**Figure S8**: starting structures
- `LEs System/replicate_1/initial_configuration.gro`
- `LEs-THF System/replicate_1/initial_configuration.gro`

**Figure S9**: Na⁺ RDFs
- `LEs System/replicate_1/prod/prod.gro`
- `LEs System/replicate_1/analysis/rdf_LEs_Na.csv`
- `LEs-THF System/replicate_1/prod/prod.gro`
- `LEs-THF System/replicate_1/analysis/rdf_LEs-THF_Na.csv`

**Figure S10**: Na⁺ CDFs
- `LEs System/replicate_1/prod/prod.gro`
- `LEs System/replicate_1/analysis/cdf_LEs_Na.csv`
- `LEs-THF System/replicate_1/prod/prod.gro`
- `LEs-THF System/replicate_1/analysis/cdf_LEs-THF_Na.csv`

**Figure S11**: PF6⁻ RDFs
- `LEs System/replicate_1/prod/prod.gro`
- `LEs System/replicate_1/analysis/rdf_LEs_P.csv`
- `LEs-THF System/replicate_1/prod/prod.gro`
- `LEs-THF System/replicate_1/analysis/rdf_LEs-THF_P.csv`

**Figure S12**: PF6⁻ CDFs
- `LEs System/replicate_1/prod/prod.gro`
- `LEs System/replicate_1/analysis/cdf_LEs_P.csv`
- `LEs-THF System/replicate_1/prod/prod.gro`
- `LEs-THF System/replicate_1/analysis/cdf_LEs-THF_P.csv`

**Figure S13**
- `LEs System/replicate_1/prod/prod.gro`
- `LEs System/replicate_1/analysis/rdf_LEs_P.csv`
- `LEs System/replicate_1/analysis/cdf_LEs_P.csv`
- `LEs-THF System/replicate_1/prod/prod.gro`
- `LEs-THF System/replicate_1/analysis/rdf_LEs-THF_P.csv`
- `LEs-THF System/replicate_1/analysis/cdf_LEs-THF_P.csv`

**Figure S14**: single-component systems, 1M (replicate 1 = `prod/`, replicate 2 = `prod2/`)

| Solvent | Replicate 1 | Replicate 2 |
|---|---|---|
| DME | `Single Component Systems/1M/DME/prod/prod.gro` | `Single Component Systems/1M/DME/prod2/prod.gro` |
| DEGDME | `Single Component Systems/1M/DEG/prod/prod.gro` | `Single Component Systems/1M/DEG/prod2/prod.gro` |
| TEGDME | `Single Component Systems/1M/TEG/prod/prod.gro` | `Single Component Systems/1M/TEG/prod2/prod.gro` |
| CH3DME | `Single Component Systems/1M/CDM/prod/prod.gro` | `Single Component Systems/1M/CDM/prod2/prod.gro` |
| THF | `Single Component Systems/1M/THF/prod/prod.gro` | `Single Component Systems/1M/THF/prod2/prod.gro` |
| Et2O | `Single Component Systems/1M/ETO/prod/prod.gro` | `Single Component Systems/1M/ETO/prod2/prod.gro` |
| DEE | `Single Component Systems/1M/DEE/prod/prod.gro` | `Single Component Systems/1M/DEE/prod2/prod.gro` |
| THP | `Single Component Systems/1M/THP/prod/prod.gro` | `Single Component Systems/1M/THP/prod2/prod.gro` |
| DOL | `Single Component Systems/1M/DOL/prod/prod.gro` | `Single Component Systems/1M/DOL/prod2/prod.gro` |
| MTF | `Single Component Systems/1M/MTF/prod/prod.gro` | `Single Component Systems/1M/MTF/prod2/prod.gro` |

The corresponding RDF/CDF data are in `Single Component Systems/1M/<solvent>/analysis/` (replicate 1) and `.../analysis2/` (replicate 2), named `rdf_<solvent>_Na.csv`, `rdf_<solvent>_P.csv`, `cdf_<solvent>_Na.csv`, `cdf_<solvent>_P.csv`.

**Figure S15**: single-component systems, 2M

| Solvent | Replicate 1 | Replicate 2 |
|---|---|---|
| DME | `Single Component Systems/2M/DME/prod/prod.gro` | `Single Component Systems/2M/DME/prod2/prod.gro` |
| DEGDME | `Single Component Systems/2M/DEG/prod/prod.gro` | `Single Component Systems/2M/DEG/prod2/prod.gro` |
| TEGDME | `Single Component Systems/2M/TEG/prod/prod.gro` | `Single Component Systems/2M/TEG/prod2/prod.gro` |
| CH3DME | `Single Component Systems/2M/CDM/prod/prod.gro` | `Single Component Systems/2M/CDM/prod2/prod.gro` |
| THF | `Single Component Systems/2M/THF/prod/prod.gro` | `Single Component Systems/2M/THF/prod2/prod.gro` |
| Et2O | `Single Component Systems/2M/ETO/prod/prod.gro` | `Single Component Systems/2M/ETO/prod2/prod.gro` |
| DEE | `Single Component Systems/2M/DEE/prod/prod.gro` | `Single Component Systems/2M/DEE/prod2/prod.gro` |
| THP | `Single Component Systems/2M/THP/prod/prod.gro` | `Single Component Systems/2M/THP/prod2/prod.gro` |
| DOL | `Single Component Systems/2M/DOL/prod/prod.gro` | `Single Component Systems/2M/DOL/prod2/prod.gro` |
| MTF | `Single Component Systems/2M/MTF/prod/prod.gro` | `Single Component Systems/2M/MTF/prod2/prod.gro` |

RDF/CDF data: `Single Component Systems/2M/<solvent>/analysis/` and `.../analysis2/`, as for Figure S14

**Figure S16**: DEE vs non-DEE systems

| Composition | Final configuration | RDF/CDF data (`analysis/`) |
|---|---|---|
| DEGDME/THF/DEE 0.1/0.5/0.4 | `DEE Systems/DEGDME_THF_DEE_0.1_0.5_0.4/prod/prod.gro` | `*_system_14.csv` |
| DME/DEGDME/THF/DEE/DOL 0.2/0.3/0.1/0.1/0.3 | `DEE Systems/DME_DEGDME_THF_DEE_DOL_0.2_0.3_0.1_0.1_0.3/prod/prod.gro` | `*_system_4.csv` |
| DME/TEGDME/DEE 0.5/0.4/0.1 | `DEE Systems/DME_TEGDME_DEE_0.5_0.4_0.1/prod/prod.gro` | `*_system_26.csv` |
| DME/DEGDME/DEE 0.5/0.1/0.4 | `DEE Systems/DME_DEGDME_DEE_0.5_0.1_0.4/prod/prod.gro` | `*_system_27.csv` |
| CH3DME/THF/DEE 0.1/0.5/0.4 | `DEE Systems/CH3DME_THF_DEE_0.1_0.5_0.4/prod/prod.gro` | `*_system_11.csv` |
| DME/THP/Et2O 0.6/0.1/0.3 | `DEE Systems/DME_THP_Et2O_0.6_0.1_0.3/prod/prod.gro` | `*_system_39.csv` |
| DME/DEGDME/THF/DOL 0.2/0.3/0.1/0.4 | `DEE Systems/DME_DEGDME_THF_DOL_0.2_0.3_0.1_0.4/prod/prod.gro` | `*_system_2.csv` |
| TEGDME/CH3DME/THF/DOL 0.2/0.2/0.2/0.4 | `DEE Systems/TEGDME_CH3DME_THF_DOL_0.2_0.2_0.2_0.4/prod/prod.gro` | `*_system_1.csv` |
| DME/DEGDME/THF 0.6/0.3/0.1 | `DEE Systems/DME_DEGDME_THF_0.6_0.3_0.1/prod/prod.gro` | `*_system_167.csv` |
| CH3DME/THP 0.9/0.1 | `DEE Systems/CH3DME_THP_0.9_0.1/prod/prod.gro` | `*_system_138.csv` |

Each `analysis/` folder contains `rdf_Na_system_N.csv`, `rdf_P_system_N.csv`, `cdf_Na_system_N.csv` and `cdf_P_system_N.csv`

**Figure S24**
- Final configurations and Na⁺ CDFs:
  - `LEs-THF System/replicate_1/prod/prod.gro`
  - `LEs-THF System/replicate_2/prod/prod.gro`
  - `LEs-THF System/replicate_1/analysis/cdf_LEs-THF_Na.csv`
  - `LEs-THF System/replicate_2/analysis/cdf_LEs-THF_Na_r2.csv`
  - `LEs System/replicate_1/prod/prod.gro`
  - `LEs System/replicate_2/prod/prod.gro`
  - `LEs System/replicate_1/analysis/cdf_LEs_Na.csv`
  - `LEs System/replicate_2/analysis/cdf_LEs_Na_r2.csv`
- Coordination-number time series (Na⁺–ether O contacts within 0.5 nm, divided by 200 Na⁺; output of `gmx mindist -s prod.tpr -f prod.xtc -n conv.ndx -on cns.xvg -d 0.5 -group`):
  - `LEs System/replicate_1/analysis/cn_Na_O_LEs.xvg`
  - `LEs-THF System/replicate_1/analysis/cn_Na_O_LEs-THF.xvg`
  - `LEs System/replicate_2/analysis/cn_Na_O_LEs_r2.xvg`
  - `LEs-THF System/replicate_2/analysis/cn_Na_O_LEs-THF_r2.xvg`
- Index files defining the groups (`NAS` and the solvent ether-oxygen group, `O01_O04_O07_O02_O05` in LEs and `O01_O04_O07_O02_O05_O` in LEs-THF, where the final `O` is the THF oxygen):
  - `LEs System/replicate_1/analysis/cn_index.ndx`
  - `LEs-THF System/replicate_1/analysis/cn_index.ndx`
  - Replicate 2 used index groups with the same names.

**Table S5**
- `LEs-THF System/replicate_1/prod/prod.gro`
- `LEs-THF System/replicate_2/prod/prod.gro`
- `LEs System/replicate_1/prod/prod.gro`
- `LEs System/replicate_2/prod/prod.gro`

**Table S8**: LEs and LEs-THF compositions
- `LEs-THF System/replicate_1/topol.top`, `LEs-THF System/replicate_1/initial_configuration.gro`
- `LEs-THF System/replicate_2/topol.top`, `LEs-THF System/replicate_2/initial_configuration.gro`
- `LEs System/replicate_1/topol.top`, `LEs System/replicate_1/initial_configuration.gro`
- `LEs System/replicate_2/topol.top`, `LEs System/replicate_2/initial_configuration.gro`

**Table S9**: single-component systems. For every concentration (1M, 2M) and solvent CDM, DEE, DEG, DME, DOL, ETO, MTF, TEG, THF, THP):
- `Single Component Systems/conc/solv/topol.top`
- `Single Component Systems/conc/solv/initial_configuration.gro` (replicate 1)
- `Single Component Systems/conc/solv/initial_configuration2.gro` (replicate 2)

**Table S10**: DEE vs non-DEE systems. For each of the ten compositions listed under Figure S16:
- `DEE Systems/<comp>/topol.top`
- `DEE Systems/<comp>/sys.gro` (starting configuration)

**Table S11**: force-field parameters
- `Force Fields/ffnonbonded.itp`

---

