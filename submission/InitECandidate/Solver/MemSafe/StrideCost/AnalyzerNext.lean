import InitECandidate.Solver.MemSafe.StrideCost.G1
import InitECandidate.Solver.MemSafe.StrideCost.BlsRules
import InitECandidate.Solver.MemSafe.StrideCost.Min
import InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44
import InitECandidate.Solver.MemSafe.BlsSlotCost.Rule
import InitECandidate.Solver.MemSafe.PairCost.Rule
import InitECandidate.Solver.MemSafe.ConstCost.Unsigned
import InitECandidate.Solver.MemSafe.SeqCost.Reads
import InitECandidate.Solver.MemSafe.InitCost.Bound
import InitECandidate.Solver.MemSafe.SeqCost.Bound
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
variable {σ : Type}
def projectedStrideNextCostA (tbl : MlS → Option Nat) (ef efz : MlS → Bool) : ProgHOL 64 → Option Nat
  | .tick => some 1
  | .seq a b =>
      match projectedStrideNextCostA tbl ef efz a, projectedStrideNextCostA tbl ef efz b with
      | some x, some y => some (x + y)
      | _, _ => none
  | .ite _ a b =>
      match projectedStrideNextCostA tbl ef efz a, projectedStrideNextCostA tbl ef efz b with
      | some x, some y => some (max x y)
      | _, _ => none
  | .dec j _ e b =>
      match e, b with
      | .const z, b@(.while (.cmp .less (.var .local i) (.const C)) wb) =>
          match decide (j = i ∧ z = 0 ∧ C.toNat < 2^63) && noContB wb && stepsB i true wb with
          | true => (projectedStrideNextCostA tbl ef efz wb).map fun B => (C.toNat+1)*(B+1)
          | false => projectedStrideNextCostA tbl ef efz b
      | .const z, b@(.seq (.while (.cmp .less (.var .local i) (.const C)) wb) rest) =>
          match decide (j = i ∧ z = 0 ∧ C.toNat < 2^63) && noContB wb && stepsB i true wb with
          | true =>
            match projectedStrideNextCostA tbl ef efz wb, projectedStrideNextCostA tbl ef efz rest with
            | some x, some y => some ((C.toNat+1)*(x+1)+y)
            | _,_ => none
          | false => projectedStrideNextCostA tbl ef efz b
      | .var .local m, b@(.dec k _ _ (.seq (.while c wb) rest)) =>
          match decMergeOk j m k c wb with
          | true =>
            match projectedStrideNextCostA tbl ef efz wb, projectedStrideNextCostA tbl ef efz rest with
            | some x, some y => some ((2 ^ 64 + 1) * (x + 1) + y)
            | _, _ => none
          | false => projectedStrideNextCostA tbl ef efz b
      | _, b => projectedStrideNextCostA tbl ef efz b
  | .while c b =>
      if InitECandidate.Solver.MemSafe.PairCost.Read.g1ReadLoopOk b then
        (projectedStrideNextCostA tbl ef efz b).map fun B => (InitECandidate.Solver.MemSafe.StrideCost.Min.cap c b (InitECandidate.Solver.MemSafe.StrideCost.G1.factor b))*(B+1)
      else
        if InitECandidate.Solver.MemSafe.BlsSlotCost.Read.slotOrCallLoopOk b then
          (projectedStrideNextCostA tbl ef efz b).map fun B => (InitECandidate.Solver.MemSafe.StrideCost.Min.cap c b (InitECandidate.Solver.MemSafe.StrideCost.BlsRules.factor b))*(B+1)
        else
          match unsignedConstF c b with
          | some F => (projectedStrideNextCostA tbl ef efz b).map fun B => F*(B+1)
          | none =>
            match xorLoopOk b with
            | true => (projectedStrideNextCostA tbl ef efz b).map fun B => (2 ^ 35 + alignSlack 64 + 1) * (B + 1)
            | false =>
            match loopOkSliceDbl ef c b with
            | true => (projectedStrideNextCostA tbl ef efz b).map fun B => (64 + 1) * (B + 1)
            | false =>
            match loopP256F c b with
            | some F => (projectedStrideNextCostA tbl ef efz b).map fun B => F * (B + 1)
            | none =>
            match loopOk ef efz c b with
            | true => (projectedStrideNextCostA tbl ef efz b).map fun B => (2 ^ 64 + 1) * (B + 1)
            | false =>
              match loopArithF c b with
              | some F => (projectedStrideNextCostA tbl ef efz b).map fun B => F * (B + 1)
              | none => none
  | .call none f args => if InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44.callB f args then some (1+InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44.bound+0) else (tbl f).map fun Bf => 1+Bf+0
  | .call (some (_, none)) f args => if InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44.callB f args then some (1+InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44.bound+0) else (tbl f).map fun Bf => 1+Bf+0
  | .call (some (_, some (_, _, hp))) f _ =>
      match tbl f, projectedStrideNextCostA tbl ef efz hp with
      | some Bf, some Bh => some (1 + Bf + Bh)
      | _, _ => none
  | .decCall _ _ f _ k =>
      match tbl f, projectedStrideNextCostA tbl ef efz k with
      | some Bf, some Bk => some (1 + Bf + Bk)
      | _, _ => none
  | _ => some 0

theorem projectedStrideNextCostA_sound {tbl : MlS → Option Nat} {ef efz : MlS → Bool} (ht : TblSound σ guestCtx tbl)
    (hef : EfSound σ guestCtx.code ef) (hefz : ∀ f, efz f = true → EfArgZero σ guestCtx.code f 1)
    (hX : DomBounded guestCtx) (hat : Arith.ArithTbls σ guestCtx.code) (h256 : P256Rule σ guestCtx) :
    ∀ (p : ProgHOL 64) (B : Nat), projectedStrideNextCostA tbl ef efz p = some B → Cost σ guestCtx p B
  | .tick, B, h => by simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_tick
  | .skip, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_skip
  | .break, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_break
  | .continue, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_continue
  | .annot _ _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_annot _ _
  | .assign _ _ _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_assign _ _ _
  | .primitive _ _ _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_primitive _ _ _
  | .store _ _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_store _ _
  | .store32 _ _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_store32 _ _
  | .storeByte _ _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_storeByte _ _
  | .extCall _ _ _ _ _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_extCall _ _ _ _ _
  | .raise _ _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_raise _ _
  | .return _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_return _
  | .shMemLoad _ _ _ _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_shMemLoad _ _ _ _
  | .shMemStore _ _ _, B, h => by
      simp only [projectedStrideNextCostA, Option.some.injEq] at h; subst h; exact cost_shMemStore _ _ _
  | .seq a b, B, h => by
      simp only [projectedStrideNextCostA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_seq (projectedStrideNextCostA_sound ht hef hefz hX hat h256 a x hx)
          (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b y hy)
      · simp at h
  | .ite _ a b, B, h => by
      simp only [projectedStrideNextCostA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_ite (projectedStrideNextCostA_sound ht hef hefz hX hat h256 a x hx)
          (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b y hy)
      · simp at h
  | .dec j sh e b, B, h => by
      rw [projectedStrideNextCostA.eq_def] at h
      dsimp only at h
      split at h
      · rename_i z i C wb
        split at h
        · rename_i hok
          have hok' := hok
          simp only [Bool.and_eq_true, decide_eq_true_eq] at hok'
          have ha : j = i ∧ z = 0 ∧ C.toNat < 2^63 := by
            simpa only [Bool.and_eq_true, decide_eq_true_eq] using hok'.1.1
          have hnc : noContB wb = true := hok'.1.2
          have hstep : stepsB i true wb = true := hok'.2
          obtain ⟨rfl, rfl, hC⟩ := ha
          obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
          exact InitECandidate.Solver.SourceCost.InitBound.cost_dec_zero_signed hC
            (projectedStrideNextCostA_sound ht hef hefz hX hat h256 wb Bb hb)
            (noContB_sound wb hnc) (stepsB_sound _ true wb hstep)
        · exact cost_dec (projectedStrideNextCostA_sound ht hef hefz hX hat h256 _ B h)
      · rename_i z i C wb rest
        split at h
        · rename_i hok
          have hok' := hok
          simp only [Bool.and_eq_true, decide_eq_true_eq] at hok'
          obtain ⟨hji,hz,hC⟩ := hok'.1.1
          have hnc := hok'.1.2
          have hstep := hok'.2
          subst hji
          subst hz
          split at h
          · rename_i x y hx hy
            simp only [Option.some.injEq] at h; subst h
            exact InitECandidate.Solver.SourceCost.SeqInitBound.cost_dec_zero_signed_seq hC
              (projectedStrideNextCostA_sound ht hef hefz hX hat h256 wb x hx)
              (projectedStrideNextCostA_sound ht hef hefz hX hat h256 rest y hy)
              (noContB_sound wb hnc) (stepsB_sound _ true wb hstep)
          · simp at h
        · exact cost_dec (projectedStrideNextCostA_sound ht hef hefz hX hat h256 _ B h)
      · rename_i m k sh' e' c wb rest
        split at h
        · rename_i hok
          split at h
          · rename_i x y hx hy
            simp only [Option.some.injEq] at h; subst h
            exact cost_dec_merge hok (projectedStrideNextCostA_sound ht hef hefz hX hat h256 wb x hx)
              (projectedStrideNextCostA_sound ht hef hefz hX hat h256 rest y hy)
          · simp at h
        · exact cost_dec (projectedStrideNextCostA_sound ht hef hefz hX hat h256 _ B h)
      · exact cost_dec (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b B h)
  | .while c b, B, h => by
      simp only [projectedStrideNextCostA] at h
      split at h
      · rename_i hread
        obtain ⟨Bb,hb,rfl⟩ := Option.map_eq_some_iff.mp h
        exact InitECandidate.Solver.MemSafe.StrideCost.Min.cap_sound (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b Bb hb) (InitECandidate.Solver.MemSafe.StrideCost.G1.factor_sound hread (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b Bb hb))
      · split at h
        · rename_i hg1
          obtain ⟨Bb,hb,rfl⟩ := Option.map_eq_some_iff.mp h
          exact InitECandidate.Solver.MemSafe.StrideCost.Min.cap_sound (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b Bb hb) (InitECandidate.Solver.MemSafe.StrideCost.BlsRules.factor_sound hX hg1 (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b Bb hb))
        · split at h
          · rename_i F hF
            obtain ⟨Bb,hb,rfl⟩ := Option.map_eq_some_iff.mp h
            exact unsignedConstF_sound hF (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b Bb hb)
          · split at h
            · rename_i ha
              obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
              exact xorLoopOk_sound hX ha (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b Bb hb)
            · split at h
              · rename_i hd
                obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
                exact loopOkSliceDbl_sound hef hd (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b Bb hb)
              · split at h
                · rename_i F hF
                  obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
                  exact h256 c b F Bb hF (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b Bb hb)
                · split at h
                  · rename_i hok
                    obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
                    exact loopOk_sound hef hefz hX hok (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b Bb hb)
                  · split at h
                    · rename_i F hF
                      obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
                      exact loopArithF_sound hat hF (projectedStrideNextCostA_sound ht hef hefz hX hat h256 b Bb hb)
                    · simp at h
  | .call none f args, B, h => by
      by_cases hc : InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44.callB f args = true
      · simp only [projectedStrideNextCostA,hc,if_true,Option.some.injEq] at h
        subst B
        exact InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44.callB_sound hc (by intro _ _ _ _ h; cases h)
      · simp only [projectedStrideNextCostA,hc,if_false] at h
        obtain ⟨Bf,hf,rfl⟩ := Option.map_eq_some_iff.mp h
        exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_, none)) f args, B, h => by
      by_cases hc : InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44.callB f args = true
      · simp only [projectedStrideNextCostA,hc,if_true,Option.some.injEq] at h
        subst B
        exact InitECandidate.Solver.MemSafe.BlsSlotCost.Pow44.callB_sound hc (by intro _ _ _ _ h; cases h)
      · simp only [projectedStrideNextCostA,hc,if_false] at h
        obtain ⟨Bf,hf,rfl⟩ := Option.map_eq_some_iff.mp h
        exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_, some (_, _, hp))) f _, B, h => by
      simp only [projectedStrideNextCostA] at h
      split at h
      · rename_i Bf Bh hf hh
        simp only [Option.some.injEq] at h; subst h
        refine cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) ?_
        intro _ _ _ _ he
        simp only [Option.some.injEq, Prod.mk.injEq] at he
        obtain ⟨-, -, -, rfl⟩ := he
        exact projectedStrideNextCostA_sound ht hef hefz hX hat h256 hp Bh hh
      · simp at h
  | .decCall _ _ f _ k, B, h => by
      simp only [projectedStrideNextCostA] at h
      split at h
      · rename_i Bf Bk hf hk
        simp only [Option.some.injEq] at h; subst h
        exact cost_decCall (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl)
          (projectedStrideNextCostA_sound ht hef hefz hX hat h256 k Bk hk)
      · simp at h


#print axioms projectedStrideNextCostA_sound
end InitECandidate.Solver.SourceCost

#print axioms InitECandidate.Solver.SourceCost.projectedStrideNextCostA_sound
