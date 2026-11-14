import InitECandidate.Solver.MemSafe.ArenaCost.Loops
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
def arenaCostA (tbl : MlS → Option Nat) (ef efz : MlS → Bool) : ProgHOL width → Option Nat
  | .tick => some 1
  | .seq a b =>
      match arenaCostA tbl ef efz a, arenaCostA tbl ef efz b with
      | some x, some y => some (x + y)
      | _, _ => none
  | .ite _ a b =>
      match arenaCostA tbl ef efz a, arenaCostA tbl ef efz b with
      | some x, some y => some (max x y)
      | _, _ => none
  | .dec j _ e b =>
      match e, b with
      | .var .local m, b@(.dec k _ _ (.seq (.while c wb) rest)) =>
          match decMergeOk j m k c wb with
          | true =>
            match arenaCostA tbl ef efz wb, arenaCostA tbl ef efz rest with
            | some x, some y => some ((2 ^ width + 1) * (x + 1) + y)
            | _, _ => none
          | false => arenaCostA tbl ef efz b
      | _, b => arenaCostA tbl ef efz b
  | .while c b =>
      match arenaLoopOk b with
      | true => (arenaCostA tbl ef efz b).map fun B => (2 ^ 35 + alignSlack width + 1) * (B + 1)
      | false =>
      match loopOkSliceDbl ef c b with
      | true => (arenaCostA tbl ef efz b).map fun B => (width + 1) * (B + 1)
      | false =>
      match loopP256F c b with
      | some F => (arenaCostA tbl ef efz b).map fun B => F * (B + 1)
      | none =>
      match loopOk ef efz c b with
      | true => (arenaCostA tbl ef efz b).map fun B => (2 ^ width + 1) * (B + 1)
      | false =>
        match loopArithF c b with
        | some F => (arenaCostA tbl ef efz b).map fun B => F * (B + 1)
        | none => none
  | .call none f _ => (tbl f).map fun Bf => 1 + Bf + 0
  | .call (some (_, none)) f _ => (tbl f).map fun Bf => 1 + Bf + 0
  | .call (some (_, some (_, _, hp))) f _ =>
      match tbl f, arenaCostA tbl ef efz hp with
      | some Bf, some Bh => some (1 + Bf + Bh)
      | _, _ => none
  | .decCall _ _ f _ k =>
      match tbl f, arenaCostA tbl ef efz k with
      | some Bf, some Bk => some (1 + Bf + Bk)
      | _, _ => none
  | _ => some 0

theorem arenaCostA_sound {tbl : MlS → Option Nat} {ef efz : MlS → Bool} (ht : TblSound σ X tbl)
    (hef : EfSound σ X.code ef) (hefz : ∀ f, efz f = true → EfArgZero σ X.code f 1)
    (hX : DomBounded X) (hat : Arith.ArithTbls σ X.code) (h256 : P256Rule σ X) :
    ∀ (p : ProgHOL width) (B : Nat), arenaCostA tbl ef efz p = some B → Cost σ X p B
  | .tick, B, h => by simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_tick
  | .skip, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_skip
  | .break, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_break
  | .continue, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_continue
  | .annot _ _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_annot _ _
  | .assign _ _ _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_assign _ _ _
  | .primitive _ _ _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_primitive _ _ _
  | .store _ _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_store _ _
  | .store32 _ _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_store32 _ _
  | .storeByte _ _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_storeByte _ _
  | .extCall _ _ _ _ _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_extCall _ _ _ _ _
  | .raise _ _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_raise _ _
  | .return _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_return _
  | .shMemLoad _ _ _ _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_shMemLoad _ _ _ _
  | .shMemStore _ _ _, B, h => by
      simp only [arenaCostA, Option.some.injEq] at h; subst h; exact cost_shMemStore _ _ _
  | .seq a b, B, h => by
      simp only [arenaCostA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_seq (arenaCostA_sound ht hef hefz hX hat h256 a x hx)
          (arenaCostA_sound ht hef hefz hX hat h256 b y hy)
      · simp at h
  | .ite _ a b, B, h => by
      simp only [arenaCostA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_ite (arenaCostA_sound ht hef hefz hX hat h256 a x hx)
          (arenaCostA_sound ht hef hefz hX hat h256 b y hy)
      · simp at h
  | .dec j sh e b, B, h => by
      rw [arenaCostA.eq_def] at h
      dsimp only at h
      split at h
      · rename_i m k sh' e' c wb rest
        split at h
        · rename_i hok
          split at h
          · rename_i x y hx hy
            simp only [Option.some.injEq] at h; subst h
            exact cost_dec_merge hok (arenaCostA_sound ht hef hefz hX hat h256 wb x hx)
              (arenaCostA_sound ht hef hefz hX hat h256 rest y hy)
          · simp at h
        · exact cost_dec (arenaCostA_sound ht hef hefz hX hat h256 _ B h)
      · exact cost_dec (arenaCostA_sound ht hef hefz hX hat h256 b B h)
  | .while c b, B, h => by
      simp only [arenaCostA] at h
      split at h
      · rename_i ha
        obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
        exact arenaLoopOk_sound hX ha (arenaCostA_sound ht hef hefz hX hat h256 b Bb hb)
      · split at h
        · rename_i hd
          obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
          exact loopOkSliceDbl_sound hef hd (arenaCostA_sound ht hef hefz hX hat h256 b Bb hb)
        · split at h
          · rename_i F hF
            obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
            exact h256 c b F Bb hF (arenaCostA_sound ht hef hefz hX hat h256 b Bb hb)
          · split at h
            · rename_i hok
              obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
              exact loopOk_sound hef hefz hX hok (arenaCostA_sound ht hef hefz hX hat h256 b Bb hb)
            · split at h
              · rename_i F hF
                obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
                exact loopArithF_sound hat hF (arenaCostA_sound ht hef hefz hX hat h256 b Bb hb)
              · simp at h
  | .call none f _, B, h => by
      simp only [arenaCostA] at h
      obtain ⟨Bf, hf, rfl⟩ := Option.map_eq_some_iff.mp h
      exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_, none)) f _, B, h => by
      simp only [arenaCostA] at h
      obtain ⟨Bf, hf, rfl⟩ := Option.map_eq_some_iff.mp h
      exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_, some (_, _, hp))) f _, B, h => by
      simp only [arenaCostA] at h
      split at h
      · rename_i Bf Bh hf hh
        simp only [Option.some.injEq] at h; subst h
        refine cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) ?_
        intro _ _ _ _ he
        simp only [Option.some.injEq, Prod.mk.injEq] at he
        obtain ⟨-, -, -, rfl⟩ := he
        exact arenaCostA_sound ht hef hefz hX hat h256 hp Bh hh
      · simp at h
  | .decCall _ _ f _ k, B, h => by
      simp only [arenaCostA] at h
      split at h
      · rename_i Bf Bk hf hk
        simp only [Option.some.injEq] at h; subst h
        exact cost_decCall (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl)
          (arenaCostA_sound ht hef hefz hX hat h256 k Bk hk)
      · simp at h


#print axioms arenaCostA_sound
end InitECandidate.Solver.SourceCost
