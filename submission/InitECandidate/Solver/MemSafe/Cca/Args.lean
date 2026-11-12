import InitECandidate.Solver.MemSafe.Cca.Kit

set_option autoImplicit false

/-!
# Argument lemmas and the activation facts of `compute_contract_address` (Cca)
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Cca
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64} {C : Cfg} {Γ : Gam} {p : Ptrs}

/-- The signature of `compute_contract_address`. -/
def ccaSg : Sig := ⟨[.any, .any, .buf 20], [], [], false⟩
/-- `rlp_encode_list_header`. -/
def sgEl : Sig := ⟨[.buf 9, .any], [], [], false⟩
/-- `keccak256`. -/
def sgKc : Sig := ⟨[.any, .any, .buf 32], [], [], false⟩
/-- `rlp_list_header_len`. -/
def sgLh : Sig := ⟨[.any], [], [], false⟩

theorem argsOK_rb {D S N : BitVec 64} (h : BufOK C Γ p D.toNat (1 * N.toNat + 9)) :
    ArgsOK C Γ p Helpers.sigRlpEncodeBytes.params [V D, V S, V N] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | i <;> simp [Helpers.sigRlpEncodeBytes] at hpt hw <;> subst hpt <;> subst hw
  · exact ⟨D, N, rfl, rfl, h⟩
  · trivial
  · trivial

theorem argCells_rb {D S N x : BitVec 64}
    (h : ArgCells Helpers.sigRlpEncodeBytes.params [V D, V S, V N] x) :
    Overlap D.toNat (1 * N.toNat + 9) x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | i <;> simp [Helpers.sigRlpEncodeBytes] at hn
  · rcases i with _ | _ | _ | i <;> simp [Helpers.sigRlpEncodeBytes] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf, V] at hw hz
    subst hw; subst hz
    exact ho

theorem argsOK_buf9 {D Y : BitVec 64} (h : BufOK C Γ p D.toNat 9) :
    ArgsOK C Γ p [PT.buf 9, PT.any] [V D, V Y] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | i <;> simp at hpt hw <;> subst hpt <;> subst hw
  · exact ⟨D, rfl, h⟩
  · trivial

theorem argCells_buf9 {D Y x : BitVec 64} (h : ArgCells [PT.buf 9, PT.any] [V D, V Y] x) :
    Overlap D.toNat 9 x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, ho⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | i <;> simp at hn
    obtain rfl := hn
    simp [argW, wordOf, V] at hw
    subst hw
    exact ho
  · rcases i with _ | _ | i <;> simp at hj

theorem argsOK_kc {A B D : BitVec 64} (h : BufOK C Γ p D.toNat 32) :
    ArgsOK C Γ p [PT.any, PT.any, PT.buf 32] [V A, V B, V D] := by
  refine ⟨rfl, fun i pt w hpt hw => ?_⟩
  rcases i with _ | _ | _ | i <;> simp at hpt hw <;> subst hpt <;> subst hw
  · trivial
  · trivial
  · exact ⟨D, rfl, h⟩

theorem argCells_kc {A B D x : BitVec 64} (h : ArgCells [PT.any, PT.any, PT.buf 32] [V A, V B, V D] x) :
    Overlap D.toNat 32 x := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hn, ho⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | i <;> simp at hn
    obtain rfl := hn
    simp [argW, wordOf, V] at hw
    subst hw
    exact ho
  · rcases i with _ | _ | _ | i <;> simp at hj

/-- The output buffer argument (`out`, `buf 20`) of the activation. -/
structure OutF (a : Act σ) (O : BitVec 64) : Prop where
  hb : BufOK a.Cb a.Γ0 a.p0 O.toNat 20
  hf : ∀ x : BitVec 64, Overlap O.toNat 20 x → a.Foot x

theorem toNat_W20 : (W 20).toNat = 20 := toNat_W (by norm_num)
theorem toNat_W12 : (W 12).toNat = 12 := toNat_W (by norm_num)

theorem heapEnd_lt : heapEnd < 2 ^ 63 := by decide

/-- The callee summaries and activation facts of `compute_contract_address`. -/
structure CI (σ : Type) (X : Ctx 64) (a : Act σ) : Prop where
  ha : ActOK a X
  hgrow : a.sg.grows = false
  hL0 : Layout a.C a.p0 a.Γ0
  rb : SumSpecA σ X a.Cb a.H (nm "rlp_encode_bytes") Helpers.sigRlpEncodeBytes (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  rbF : Rec.WSpec σ X (nm "rlp_encode_bytes") Rec.WbPre Rec.WbF
  rw_ : SumSpecA σ X a.Cb a.H (nm "rlp_encode_word") Helpers.sigRlpEncodeWord (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  rwF : Rec.WSpec σ X (nm "rlp_encode_word") Rec.WwPre (fun _ _ => 9)
  lh : SumSpecA σ X a.Cb a.H (nm "rlp_list_header_len") sgLh (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  lhF : Rec.VSpec σ X (nm "rlp_list_header_len") (fun vs v => Rec.LhlRet vs v)
  el : SumSpecA σ X a.Cb a.H (nm "rlp_encode_list_header") sgEl (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  kc : SumSpecA σ X a.Cb a.H (nm "keccak256") sgKc (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  mc : SumSpecA σ X a.Cb a.H (nm "memcpy") Helpers.sigMemcpy (fun _ _ _ => True)
    (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
  hAl : AllocSpec σ X (nm "alloc") .heap
  hAc : Summ σ X a.Cb a.H (nm "alloc") allocSig
  hRel : ReleaseSpec σ X (nm "heap_release") gHeap
  hMk : MarkSpec' σ X (nm "heap_mark") gHeap

end InitECandidate.Solver.MemSafe.Cca

#print axioms InitECandidate.Solver.MemSafe.Cca.argCells_rb
#print axioms InitECandidate.Solver.MemSafe.Cca.argCells_buf9
#print axioms InitECandidate.Solver.MemSafe.Cca.argCells_kc
