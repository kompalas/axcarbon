# AxCarbon: Genetic Algorithm-Based Approximate Circuit Generation and Evaluation

**AxCarbon** is a framework for **genetic algorithm-driven approximate circuit design** targeting arithmetic and logic circuits, such as multipliers, adders, and MAC units.  
It supports **floating-point (FP32, FP16, bfloat16)** and **integer arithmetic** and provides **full hardware evaluation** of approximate circuits.  
The framework prunes gates from netlists to generate approximate variants of exact circuits and evaluates their trade-offs in accuracy, power, area, and energy.

---

## 🔧 Key Features

- 🧬 **Genetic Algorithm Optimization**  
  Evolves approximate circuits by pruning gates and exploring the design space.

- ➗ **Arithmetic Circuit Support**  
  Includes multipliers, adders, MAC units, and additional circuit types.

- 🔢 **Multi-Precision Arithmetic**  
  Supports FP32, FP16, bfloat16, and integer operations.

- 🛠️ **Full Hardware Evaluation**  
  Analyzes power, performance, and area (PPA) metrics for all designs.

- 🗂️ **Baseline Integration**  
  Supports EvoApprox circuits as baselines for comparison and approximation.

- 🧩 **Utility Scripts**  
  Simplifies circuit setup, evaluation, and exploration.

---

## 📦 Technologies Used

- Python 3  
- Genetic Algorithms for circuit optimization  
- Netlist-based circuit representation  
- Hardware evaluation toolchain integration  
- EvoApprox circuit dataset support  
- Conda for environment management  
- YAML-based configuration  

---

## ⚙️ Installation

Set up the environment using Conda:

```bash
# Clone the repository
git clone https://github.com/your-username/axcarbon.git
cd axcarbon

# Create and activate the conda environment
conda env create -f env.yml
conda activate axcarbon
```

## 🚀 Usage

Run genetic algorithm optimization:
```bash
./run/ga.sh
```
Run full evaluation of GA-discovered circuits:
```bash
./run/get_results.sh
```
Set up new circuits:
```bash
./run/setup_circuit.sh
```
Gather and approximate EvoApprox baselines:
```bash
./run/gather_evoapprox.sh
```

## 📚 Citation
If you use this work, please cite:
```bibtex
@inproceedings{panteleaki2025late,
  title={Late breaking results: Leveraging approximate computing for carbon-aware dnn accelerators},
  author={Panteleaki, Aikaterini Maria and Balaskas, Konstantinos and Zervakis, Georgios and Amrouch, Hussam and Anagnostopoulos, Iraklis},
  booktitle={2025 Design, Automation \& Test in Europe Conference (DATE)},
  pages={1--2},
  year={2025},
  organization={IEEE}
}
```
