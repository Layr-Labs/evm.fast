import InitECandidate.Solver.MemSafe.Init.Insts

/-!
# Init: the inits other than `mem_init` and `evm_init`, as `InitFS`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
set_option cbv.maxSteps 4000000000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

/-- The typed pointer globals: pending until their init adopts them. -/
def Pnd0 : List MlS := guestC.GT.filterMap fun e => match e.2 with | .ptr _ => some e.1 | _ => none

def initBody (d : Flapjack.Decl (BitVec 64)) : ProgHOL 64 := (fnEntry d).2.2.1

def fuelI : Nat := 3000

def stepPn (T : ITab) (d : Flapjack.Decl (BitVec 64)) (pi : List MlS) : List MlS :=
  (ichk sNames T fuelI true pi (initBody d)).getD []

theorem ichk_eq_of_isSome {o : Option (List MlS)} (h : o.isSome = true) : o = some (o.getD []) := by
  cases o <;> simp_all

theorem fs_gen {σ : Type} {T : ITab} (hT : ∀ e ∈ T, InitFS σ e.1 e.2.1 e.2.2)
    {d : Flapjack.Decl (BitVec 64)} {f : MlS}
    (hc : guestCode f = some (fnEntry d).2) (hps : (fnEntry d).2.1 = []) (pi : List MlS)
    (hs : (ichk sNames T fuelI true pi (initBody d)).isSome = true) :
    InitFS σ f pi (stepPn T d pi) :=
  initFS_of_chk sFns_closed hT hps hc (ichk_eq_of_isSome hs)

def initFns : EntryList :=
  [fnEntry Guest.Software.guestFn_sha256_init,
   fnEntry Guest.Software.guestFn_keccak_init,
   fnEntry Guest.Software.guestFn_ssz_init,
   fnEntry Guest.Software.guestFn_mpt_init,
   fnEntry Guest.Software.guestFn_u256_ws_init,
   fnEntry Guest.Software.guestFn_secp256k1_init,
   fnEntry Guest.Software.guestFn_bn254_init,
   fnEntry Guest.Software.guestFn_bls_precompiles_init,
   fnEntry Guest.Software.guestFn_bls_lib_init,
   fnEntry Guest.Software.guestFn_bls_consts_init,
   fnEntry Guest.Software.guestFn_ripemd160_init,
   fnEntry Guest.Software.guestFn_blake2_init,
   fnEntry Guest.Software.guestFn_header_init,
   fnEntry Guest.Software.guestFn_fork_init,
   fnEntry Guest.Software.guestFn_evm_init, fnEntry Guest.Software.guestFn_mem_init,
   fnEntry Guest.Software.guestFn_main]

theorem initFns_valid : ∀ e ∈ initFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [initFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 91) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 100) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 185) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 247) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 38) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 148) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 648) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 811) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 801) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 696) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 612) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 621) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 238) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 861) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 566) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 6) (by have := guestAst_len; omega)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 889) (by have := guestAst_len2; omega)) ⟨_, rfl⟩

def nmOf (d : Flapjack.Decl (BitVec 64)) : MlS := (fnEntry d).1

open Guest.Software

def pn1 : List MlS := stepPn [] guestFn_sha256_init Pnd0
def pn2 : List MlS := stepPn [] guestFn_keccak_init pn1
def pn3 : List MlS := stepPn [] guestFn_ssz_init pn2
def pn4 : List MlS := stepPn [] guestFn_mpt_init pn3
def pn5 : List MlS := stepPn [] guestFn_u256_ws_init pn4
def pn6 : List MlS := stepPn [] guestFn_secp256k1_init pn5
def pn7 : List MlS := stepPn [] guestFn_bn254_init pn6
def pnC : List MlS := stepPn [] guestFn_bls_consts_init pn7
def tC : ITab := [(nmOf guestFn_bls_consts_init, pn7, pnC)]
def pnL : List MlS := stepPn tC guestFn_bls_lib_init pn7
def tL : ITab := [(nmOf guestFn_bls_lib_init, pn7, pnL), (nmOf guestFn_bls_consts_init, pn7, pnC)]
def pn8 : List MlS := stepPn tL guestFn_bls_precompiles_init pn7
def pn9 : List MlS := stepPn [] guestFn_ripemd160_init pn8
def pn10 : List MlS := stepPn [] guestFn_blake2_init pn9
def pn11 : List MlS := stepPn [] guestFn_header_init pn10
def pn12 : List MlS := stepPn [] guestFn_evm_init pn11
def pn13 : List MlS := stepPn [] guestFn_fork_init pn12

theorem pn13_nil : pn13 = [] := by decide +kernel

section
variable {σ : Type}

macro "fsTac" : tactic => `(tactic| exact fs_gen (by simp) (initFns_valid _ (by simp [initFns])) (by rfl) _ (by decide +kernel))

theorem fs_sha : InitFS σ (nmOf guestFn_sha256_init) Pnd0 pn1 := by fsTac
theorem fs_keccak : InitFS σ (nmOf guestFn_keccak_init) pn1 pn2 := by fsTac
theorem fs_ssz : InitFS σ (nmOf guestFn_ssz_init) pn2 pn3 := by fsTac
theorem fs_mpt : InitFS σ (nmOf guestFn_mpt_init) pn3 pn4 := by fsTac
theorem fs_u256 : InitFS σ (nmOf guestFn_u256_ws_init) pn4 pn5 := by fsTac
theorem fs_secp : InitFS σ (nmOf guestFn_secp256k1_init) pn5 pn6 := by fsTac
theorem fs_bn : InitFS σ (nmOf guestFn_bn254_init) pn6 pn7 := by fsTac
theorem fs_consts : InitFS σ (nmOf guestFn_bls_consts_init) pn7 pnC := by fsTac
theorem hT_C : ∀ e ∈ tC, InitFS σ e.1 e.2.1 e.2.2 := by
  intro e he; simp only [tC, List.mem_singleton] at he; subst he; exact fs_consts
theorem fs_lib : InitFS σ (nmOf guestFn_bls_lib_init) pn7 pnL :=
  fs_gen hT_C (initFns_valid _ (by simp [initFns])) (by rfl) _ (by decide +kernel)
theorem hT_L : ∀ e ∈ tL, InitFS σ e.1 e.2.1 e.2.2 := by
  intro e he
  simp only [tL, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl
  · exact fs_lib
  · exact fs_consts
theorem fs_bls : InitFS σ (nmOf guestFn_bls_precompiles_init) pn7 pn8 :=
  fs_gen hT_L (initFns_valid _ (by simp [initFns])) (by rfl) _ (by decide +kernel)
theorem fs_rmd : InitFS σ (nmOf guestFn_ripemd160_init) pn8 pn9 := by fsTac
theorem fs_b2 : InitFS σ (nmOf guestFn_blake2_init) pn9 pn10 := by fsTac
theorem fs_hdr : InitFS σ (nmOf guestFn_header_init) pn10 pn11 := by fsTac
theorem fs_evm : InitFS σ (nmOf guestFn_evm_init) pn11 pn12 := by fsTac
theorem fs_fork : InitFS σ (nmOf guestFn_fork_init) pn12 pn13 := by fsTac
end

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.fs_evm
#print axioms InitECandidate.Solver.MemSafe.Init.fs_bls
#print axioms InitECandidate.Solver.MemSafe.Init.pn13_nil
