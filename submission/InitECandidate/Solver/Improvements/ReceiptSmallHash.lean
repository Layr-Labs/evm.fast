import InitECandidate.Solver.Improvements.ThirdSourceAnalyzer
import InitECandidate.Solver.Spec.Mpt.Leaves.FinCode
import InitECandidate.Solver.SourceCost.Frame
import InitECandidate.Solver.Band.Rules

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace ReceiptSmallHash
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe

variable {σ : Type}

def ShortArg (index : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ n : BitVec 64, argW vs index = some n ∧ n.toNat ≤ 32

def LengthIs (n : BitVec 64) (s : State σ) : Prop :=
  s.locals.lookup (nm "n") = some (.val (.word n))

theorem length_set {s : State σ} {n : BitVec 64} {x : MlS} (hne : x ≠ nm "n")
    (hn : LengthIs n s) (v : ValueHOL 64) : LengthIs n (setVarHOLFinite x v s) := by
  unfold LengthIs at *
  rw [lk_set_ne _ _ hne]
  exact hn

theorem length_kept {X : Ctx 64} {p : ProgHOL 64} {n : BitVec 64}
    (hp : Keeps σ (nm "n") p) : Hoare σ X (LengthIs n) p (fun r t => r = none → LengthIs n t) := by
  intro s _ hn _ hr
  have keep := hp s (Or.inl hr)
  unfold LengthIs at *
  rwa [keep]

def price : Nat := 332041393326771929112

private theorem block_guard_false {s : State σ} {n : BitVec 64}
    (hn : LengthIs n s) (hi : s.locals.lookup (nm "i") = some (.val (.word 0)))
    (hsmall : n.toNat ≤ 32) :
    ev s kCond = some (.val (.word 0)) := by
  have hn' : ev s (lv (nm "n")) = some (.val (.word n)) := ev_lv' hn
  have hi' : ev s (lv (nm "i")) = some (.val (.word 0)) := ev_lv' hi
  have hlt : n.toNat < (136 : BitVec 64).toNat := by
    change n.toNat < 136
    omega
  have hcmp : wordCmpHOL .notLower n (136 : BitVec 64) = false := by
    have hword : n < (136 : BitVec 64) := hlt
    change (!(decide (n < (136 : BitVec 64)))) = false
    rw [decide_eq_true hword]
    rfl
  unfold kCond
  rw [ev_cmp hn' (ev_add2 hi' (ev_cw s 136))]
  rw [show (0 : BitVec 64) + BitVec.ofNat 64 136 = 136 from rfl, hcmp]
  all_goals rfl

private theorem k_body_cost {n : BitVec 64} (hsmall : n.toNat ≤ 32) :
    Inv.CostP σ guestCtx (LengthIs n) kBody price := by
  unfold kBody price
  refine Inv.costP_dec fun s _ hn v _ _ => ?_
  refine Inv.CostP.pre (P := LengthIs n) ?_ ?_
  · refine Inv.costP_seq (Ba := 73786976294838206469) (Bb := 258254417031933722643)
      (Inv.costP_of_cost (ThirdSourceAnalyzer.cost_guest_costA (by decide_cbv)))
      (length_kept (keepsB_sound _ _ (by rfl))) ?_
    refine Inv.costP_dec fun s _ hn v hv _ => ?_
    rw [ev_cw] at hv
    cases hv
    have htail : Cost σ guestCtx
        (.dec (nm "rem") .one (.op .sub [lv (nm "n"), lv (nm "i")]) kTail)
        258254417031933722643 := ThirdSourceAnalyzer.cost_guest_costA (by decide_cbv)
    refine Inv.costP_seq (Ba := 0) (R := fun _ => True) ?_ (fun _ _ _ _ _ => trivial)
      (Inv.costP_of_cost htail)
    intro t _ ht _
    subst t
    have hguard : ev (setVarHOLFinite (nm "i") (.val (.word 0#64)) s) kCond =
        some (.val (.word 0#64)) :=
      block_guard_false (length_set (by decide) hn _) (lk_set_self _ _ _) hsmall
    rw [evaluateHOLFiniteState_eq_evaluate_def]
    simp only [ev] at hguard
    simp [hguard]
  · intro t _ ht
    subst t
    exact length_set (by decide) hn _

theorem callee_cost : Inv.CalleeCostP σ guestCtx (nm "keccak256")
    (fun vs _ => ShortArg 1 vs) price := by
  intro vs body callee rs hlookup s hctx ⟨hloc, n, hn, hsmall⟩ hgood
  rw [guestCtx_code] at hlookup
  obtain ⟨rfl, _, A, B, C, rfl, _, hshape, _, _, hb, _⟩ :=
    Inv.lookupCode_three_full code_keccak256 (by decide) (by decide) (by decide) hlookup
  obtain ⟨n', rfl⟩ := val_of_shapeEq_one hshape
  simp only [argW, InitECandidate.Solver.MemSafe.wordOf,
    List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hn
  subst n'
  have hnloc : LengthIs n s := by
    unfold LengthIs
    rw [hloc]
    exact hb
  exact k_body_cost hsmall s hctx hnloc hgood

#print axioms callee_cost

end ReceiptSmallHash
