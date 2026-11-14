import InitECandidate.Solver.MemSafe.ArrayCost.ScaledCallReads
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
def callArrayLoopCostA (tbl : MlS → Option Nat) (ef efz : MlS → Bool) : ProgHOL 64 → Option Nat
  | .tick => some 1
  | .seq a b =>
      match callArrayLoopCostA tbl ef efz a, callArrayLoopCostA tbl ef efz b with
      | some x, some y => some (x + y)
      | _, _ => none
  | .ite _ a b =>
      match callArrayLoopCostA tbl ef efz a, callArrayLoopCostA tbl ef efz b with
      | some x, some y => some (max x y)
      | _, _ => none
  | .dec j _ e b =>
      match e, b with
      | .const z, b@(.while (.cmp .less (.var .local i) (.const C)) wb) =>
          match decide (j = i ∧ z = 0 ∧ C.toNat < 2^63) && noContB wb && stepsB i true wb with
          | true => (callArrayLoopCostA tbl ef efz wb).map fun B => (C.toNat+1)*(B+1)
          | false => callArrayLoopCostA tbl ef efz b
      | .const z, b@(.seq (.while (.cmp .less (.var .local i) (.const C)) wb) rest) =>
          match decide (j = i ∧ z = 0 ∧ C.toNat < 2^63) && noContB wb && stepsB i true wb with
          | true =>
            match callArrayLoopCostA tbl ef efz wb, callArrayLoopCostA tbl ef efz rest with
            | some x, some y => some ((C.toNat+1)*(x+1)+y)
            | _,_ => none
          | false => callArrayLoopCostA tbl ef efz b
      | .var .local m, b@(.dec k _ _ (.seq (.while c wb) rest)) =>
          match decMergeOk j m k c wb with
          | true =>
            match callArrayLoopCostA tbl ef efz wb, callArrayLoopCostA tbl ef efz rest with
            | some x, some y => some ((2 ^ 64 + 1) * (x + 1) + y)
            | _, _ => none
          | false => callArrayLoopCostA tbl ef efz b
      | _, b => callArrayLoopCostA tbl ef efz b
  | .while c b =>
      if InitECandidate.Solver.MemSafe.ArrayCost.Read.callScaledReadLoopOk b then
        (callArrayLoopCostA tbl ef efz b).map fun B => (2^35 + alignSlack 64 + 1)*(B+1)
      else
        if InitECandidate.Solver.MemSafe.PairCost.Read.g1ReadLoopOk b then
          (callArrayLoopCostA tbl ef efz b).map fun B => (2^35 + alignSlack 64 + 1)*(B+1)
        else
          match unsignedConstF c b with
          | some F => (callArrayLoopCostA tbl ef efz b).map fun B => F*(B+1)
          | none =>
            match xorLoopOk b with
            | true => (callArrayLoopCostA tbl ef efz b).map fun B => (2 ^ 35 + alignSlack 64 + 1) * (B + 1)
            | false =>
            match loopOkSliceDbl ef c b with
            | true => (callArrayLoopCostA tbl ef efz b).map fun B => (64 + 1) * (B + 1)
            | false =>
            match loopP256F c b with
            | some F => (callArrayLoopCostA tbl ef efz b).map fun B => F * (B + 1)
            | none =>
            match loopOk ef efz c b with
            | true => (callArrayLoopCostA tbl ef efz b).map fun B => (2 ^ 64 + 1) * (B + 1)
            | false =>
              match loopArithF c b with
              | some F => (callArrayLoopCostA tbl ef efz b).map fun B => F * (B + 1)
              | none => none
  | .call none f _ => (tbl f).map fun Bf => 1 + Bf + 0
  | .call (some (_, none)) f _ => (tbl f).map fun Bf => 1 + Bf + 0
  | .call (some (_, some (_, _, hp))) f _ =>
      match tbl f, callArrayLoopCostA tbl ef efz hp with
      | some Bf, some Bh => some (1 + Bf + Bh)
      | _, _ => none
  | .decCall _ _ f _ k =>
      match tbl f, callArrayLoopCostA tbl ef efz k with
      | some Bf, some Bk => some (1 + Bf + Bk)
      | _, _ => none
  | _ => some 0

theorem callArrayLoopCostA_sound {tbl : MlS → Option Nat} {ef efz : MlS → Bool} (ht : TblSound σ guestCtx tbl)
    (hef : EfSound σ guestCtx.code ef) (hefz : ∀ f, efz f = true → EfArgZero σ guestCtx.code f 1)
    (hX : DomBounded guestCtx) (hat : Arith.ArithTbls σ guestCtx.code) (h256 : P256Rule σ guestCtx) :
    ∀ (p : ProgHOL 64) (B : Nat), callArrayLoopCostA tbl ef efz p = some B → Cost σ guestCtx p B
  | .tick, B, h => by simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_tick
  | .skip, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_skip
  | .break, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_break
  | .continue, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_continue
  | .annot _ _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_annot _ _
  | .assign _ _ _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_assign _ _ _
  | .primitive _ _ _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_primitive _ _ _
  | .store _ _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_store _ _
  | .store32 _ _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_store32 _ _
  | .storeByte _ _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_storeByte _ _
  | .extCall _ _ _ _ _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_extCall _ _ _ _ _
  | .raise _ _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_raise _ _
  | .return _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_return _
  | .shMemLoad _ _ _ _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_shMemLoad _ _ _ _
  | .shMemStore _ _ _, B, h => by
      simp only [callArrayLoopCostA, Option.some.injEq] at h; subst h; exact cost_shMemStore _ _ _
  | .seq a b, B, h => by
      simp only [callArrayLoopCostA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_seq (callArrayLoopCostA_sound ht hef hefz hX hat h256 a x hx)
          (callArrayLoopCostA_sound ht hef hefz hX hat h256 b y hy)
      · simp at h
  | .ite _ a b, B, h => by
      simp only [callArrayLoopCostA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_ite (callArrayLoopCostA_sound ht hef hefz hX hat h256 a x hx)
          (callArrayLoopCostA_sound ht hef hefz hX hat h256 b y hy)
      · simp at h
  | .dec j sh e b, B, h => by
      rw [callArrayLoopCostA.eq_def] at h
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
            (callArrayLoopCostA_sound ht hef hefz hX hat h256 wb Bb hb)
            (noContB_sound wb hnc) (stepsB_sound _ true wb hstep)
        · exact cost_dec (callArrayLoopCostA_sound ht hef hefz hX hat h256 _ B h)
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
              (callArrayLoopCostA_sound ht hef hefz hX hat h256 wb x hx)
              (callArrayLoopCostA_sound ht hef hefz hX hat h256 rest y hy)
              (noContB_sound wb hnc) (stepsB_sound _ true wb hstep)
          · simp at h
        · exact cost_dec (callArrayLoopCostA_sound ht hef hefz hX hat h256 _ B h)
      · rename_i m k sh' e' c wb rest
        split at h
        · rename_i hok
          split at h
          · rename_i x y hx hy
            simp only [Option.some.injEq] at h; subst h
            exact cost_dec_merge hok (callArrayLoopCostA_sound ht hef hefz hX hat h256 wb x hx)
              (callArrayLoopCostA_sound ht hef hefz hX hat h256 rest y hy)
          · simp at h
        · exact cost_dec (callArrayLoopCostA_sound ht hef hefz hX hat h256 _ B h)
      · exact cost_dec (callArrayLoopCostA_sound ht hef hefz hX hat h256 b B h)
  | .while c b, B, h => by
      simp only [callArrayLoopCostA] at h
      split at h
      · rename_i hread
        obtain ⟨Bb,hb,rfl⟩ := Option.map_eq_some_iff.mp h
        exact InitECandidate.Solver.MemSafe.ArrayCost.Read.callScaledReadLoopOk_sound hX hread (callArrayLoopCostA_sound ht hef hefz hX hat h256 b Bb hb)
      · split at h
        · rename_i hg1
          obtain ⟨Bb,hb,rfl⟩ := Option.map_eq_some_iff.mp h
          exact InitECandidate.Solver.MemSafe.PairCost.Read.g1ReadLoopOk_sound hg1 (callArrayLoopCostA_sound ht hef hefz hX hat h256 b Bb hb)
        · split at h
          · rename_i F hF
            obtain ⟨Bb,hb,rfl⟩ := Option.map_eq_some_iff.mp h
            exact unsignedConstF_sound hF (callArrayLoopCostA_sound ht hef hefz hX hat h256 b Bb hb)
          · split at h
            · rename_i ha
              obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
              exact xorLoopOk_sound hX ha (callArrayLoopCostA_sound ht hef hefz hX hat h256 b Bb hb)
            · split at h
              · rename_i hd
                obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
                exact loopOkSliceDbl_sound hef hd (callArrayLoopCostA_sound ht hef hefz hX hat h256 b Bb hb)
              · split at h
                · rename_i F hF
                  obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
                  exact h256 c b F Bb hF (callArrayLoopCostA_sound ht hef hefz hX hat h256 b Bb hb)
                · split at h
                  · rename_i hok
                    obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
                    exact loopOk_sound hef hefz hX hok (callArrayLoopCostA_sound ht hef hefz hX hat h256 b Bb hb)
                  · split at h
                    · rename_i F hF
                      obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
                      exact loopArithF_sound hat hF (callArrayLoopCostA_sound ht hef hefz hX hat h256 b Bb hb)
                    · simp at h
  | .call none f _, B, h => by
      simp only [callArrayLoopCostA] at h
      obtain ⟨Bf, hf, rfl⟩ := Option.map_eq_some_iff.mp h
      exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_, none)) f _, B, h => by
      simp only [callArrayLoopCostA] at h
      obtain ⟨Bf, hf, rfl⟩ := Option.map_eq_some_iff.mp h
      exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_, some (_, _, hp))) f _, B, h => by
      simp only [callArrayLoopCostA] at h
      split at h
      · rename_i Bf Bh hf hh
        simp only [Option.some.injEq] at h; subst h
        refine cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) ?_
        intro _ _ _ _ he
        simp only [Option.some.injEq, Prod.mk.injEq] at he
        obtain ⟨-, -, -, rfl⟩ := he
        exact callArrayLoopCostA_sound ht hef hefz hX hat h256 hp Bh hh
      · simp at h
  | .decCall _ _ f _ k, B, h => by
      simp only [callArrayLoopCostA] at h
      split at h
      · rename_i Bf Bk hf hk
        simp only [Option.some.injEq] at h; subst h
        exact cost_decCall (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl)
          (callArrayLoopCostA_sound ht hef hefz hX hat h256 k Bk hk)
      · simp at h


#print axioms callArrayLoopCostA_sound
end InitECandidate.Solver.SourceCost
