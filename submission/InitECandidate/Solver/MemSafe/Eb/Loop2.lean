import InitECandidate.Solver.MemSafe.Eb.Loop1

/-!
# `execute_block`: loop part 2 (`var tx = decode_transaction(...)`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

open InitECandidate.Solver.Spec.Mpt.Dec (SlPre) in
theorem cr_decode : CallR (σ := σ) (nm "decode_transaction")
    (fun vs s Γ p => ArgsOK guestC Γ p Rec.txSig.params vs ∧ SlPre vs s)
    (fun _ _ _ _ => False)
    (fun vs s Γ p v t Γ' p' => RetOK Γ' p p' vs Rec.txSig.ret v ∧ (Rec.txSig.grows = false → NewFresh Γ Γ' p p) ∧
      Rec.TxRxIn vs Γ' t.memory v) :=
  callR_mono_post (callR_of_sumSpecA (Pre := fun vs s _ => SlPre vs s) (PW := fun _ _ _ _ => False)
    (Q := fun vs _ _ r t Γ' => ∀ v, r = .returned v → Rec.TxRxIn vs Γ' t.memory v) Rec.sumSpecA_decode_transaction
    (by decide) (by intro g _ h; cases h) (fun _ _ _ _ _ h => h.elim))
    (fun _ _ _ _ v _ _ _ hq => ⟨hq.1, hq.2.1, hq.2.2 v rfl⟩)

theorem mul16_ofNat {iv : BitVec 64} (h : iv.toNat < 2 ^ 50) :
    iv * BitVec.ofNat 64 16 = BitVec.ofNat 64 (16 * iv.toNat) := by
  apply BitVec.eq_of_toNat_eq
  have h16 : (BitVec.ofNat 64 16).toNat = 16 := by decide
  rw [BitVec.toNat_mul, h16, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : iv.toNat * 16 < 2 ^ 64),
    Nat.mod_eq_of_lt (by omega : 16 * iv.toNat < 2 ^ 64)]
  omega

theorem add8_ofNat {x : Nat} (h : x < 2 ^ 60) :
    BitVec.ofNat 64 x + BitVec.ofNat 64 8 = BitVec.ofNat 64 (x + 8) := by
  apply BitVec.eq_of_toNat_eq
  have h8 : (BitVec.ofNat 64 8).toNat = 8 := by decide
  rw [BitVec.toNat_add, h8, BitVec.toNat_ofNat, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : x < 2 ^ 64),
    Nat.mod_eq_of_lt (by omega : x + 8 < 2 ^ 64)]

/-- The two arguments of `decode_transaction` in iteration `iv`. -/
def txArg1 : ExpHOL 64 := .load .one (.op .add [lv (nm "ptxs"), .panop .mul [lv (nm "i"), cw 16]])
def txArg2 : ExpHOL 64 := .load .one (.op .add [lv (nm "ptxs"), .panop .mul [lv (nm "i"), cw 16], cw 8])

section dd
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem txArg_vals {s : State σ} (hpa : PA E En S s) {ptxs0 iv : BitVec 64}
    (hptxs : En (nm "ptxs") = some (.val (.word ptxs0))) (hi : En (nm "i") = some (.val (.word iv)))
    (hbd : iv.toNat < 2 ^ 50) :
    EvI s txArg1 (.val (.word (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * iv.toNat))))) ∧
    EvI s txArg2 (.val (.word (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * iv.toNat + 8))))) := by
  have e1 : EvI s (.op .add [lv (nm "ptxs"), .panop .mul [lv (nm "i"), cw 16]])
      (.val (.word (ptxs0 + iv * BitVec.ofNat 64 16))) :=
    evI_add (evI_lv_pa hpa hptxs) (evI_mul (evI_lv_pa hpa hi) (evI_cw s 16))
  have e2 : EvI s (.op .add [lv (nm "ptxs"), .panop .mul [lv (nm "i"), cw 16], cw 8])
      (.val (.word (ptxs0 + (iv * BitVec.ofNat 64 16 + BitVec.ofNat 64 8)))) :=
    evI_add3 (evI_lv_pa hpa hptxs) (evI_mul (evI_lv_pa hpa hi) (evI_cw s 16)) (evI_cw s 8)
  rw [mul16_ofNat hbd] at e1 e2
  rw [add8_ofNat (by omega)] at e2
  exact ⟨evI_ld e1, evI_ld e2⟩

end dd

end InitECandidate.Solver.MemSafe.Eb
