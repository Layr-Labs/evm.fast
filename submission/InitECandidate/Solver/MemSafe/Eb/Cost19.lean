import InitECandidate.Solver.MemSafe.Eb.Cost18
import InitECandidate.Solver.MemSafe.Eb.BalInitStep

/-!
# `execute_block`: the cost walk, part 19 (`bal_init`)
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

variable {σ : Type}

section cw19
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_s15_balInit {Bn : Nat} (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (balW.contains g = true))
    (hnext : ∀ w1 w2 w3 w4 : BitVec 64, CW (PA E En (fun f => S f ∨ BalNF w1 w2 w3 w4 f)) ebS16 Bn QT) :
    CW (PA E En S) ebS15 ((1 + cBalInit + 0) + Bn) QT := by
  unfold ebS15
  refine cw_seq (cw_hn (hn_callRX (f := nm "bal_init") (args := []) (S := S) (W := fun g => balW.contains g = true)
    cr_balInit (gwk_bal (by decide)) (fun NF => ∃ w1 w2 w3 w4, ∀ f, NF f ↔ BalNF w1 w2 w3 w4 f) ?_ ?_)
    (costU cc_cBalInit)) ?_
  · refine callObl_plain ?_ hT hz
    intro s hs vs hvs Γ p hr hL
    rw [evs_nil] at hvs
    cases hvs
    exact ⟨rfl, fun i pt v hpt => by simp [Bal.biSig] at hpt⟩
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq
    obtain ⟨-, -, hbi⟩ := hq
    obtain ⟨⟨w1, hw1, o1, ho1, hb1, ht1⟩, ⟨w2, hw2, o2, ho2, hb2, ht2⟩, ⟨w3, hw3, o3, ho3, hb3, ht3⟩,
      ⟨w4, hw4, o4, ho4, hb4, ht4⟩⟩ := hbi v rfl
    refine ⟨BalNF w1 w2 w3 w4, ⟨w1, w2, w3, w4, fun f => Iff.rfl⟩, ?_⟩
    intro f hf
    rcases hf with rfl | rfl | rfl | rfl
    · exact ⟨hw1, o1, ho1, hb1, ht1⟩
    · exact ⟨hw2, o2, ho2, hb2, ht2⟩
    · exact ⟨hw3, o3, ho3, hb3, ht3⟩
    · exact ⟨hw4, o4, ho4, hb4, ht4⟩
  · refine cw_exists fun NF => ?_
    refine cw_pre (P := fun s => ∃ w1 w2 w3 w4 : BitVec 64, PA E En (fun f => S f ∨ BalNF w1 w2 w3 w4 f) s) ?_ ?_
    · exact cw_exists fun w1 => cw_exists fun w2 => cw_exists fun w3 => cw_exists fun w4 => hnext w1 w2 w3 w4
    · rintro s _ ⟨⟨w1, w2, w3, w4, hNF⟩, hpa⟩
      have : NF = BalNF w1 w2 w3 w4 := funext fun f => propext (hNF f)
      subst this
      exact ⟨w1, w2, w3, w4, hpa⟩

end cw19

end InitECandidate.Solver.MemSafe.Eb
