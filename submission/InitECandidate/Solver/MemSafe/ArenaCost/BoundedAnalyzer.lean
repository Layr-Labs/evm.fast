import InitECandidate.Solver.Spec.P256Fold
import InitECandidate.Solver.MemSafe.Wire.Guest
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
theorem loopOkAddr_tight_sound (hX : DomBounded X) {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : loopOkAddr b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ 35 + alignSlack width + 1) * (B + 1)) := by
  unfold loopOkAddr at h
  split at h
  · rename_i Bs i sh hacc
    simp only [Bool.and_eq_true] at h
    obtain ⟨hst, hkb⟩ := h
    have hsteps := stepsRB_sound (σ := σ) i addrStepMax [] b hst
    obtain ⟨L, hL, ⟨lo1, hD1⟩, ⟨lo2, hD2⟩, hLen⟩ := hX
    have hLs : L + alignSlack width ≤ 2 ^ width := by omega
    refine (cost_while_addr (addrOf Bs i) (if sh then lo2 else lo1) (L + alignSlack width)
      addrStepMax (by omega) hb (fun _ => rfl) ?_).mono
      (Nat.mul_le_mul_right _ (by omega))
    intro t ht hc
    obtain ⟨w, hw, hhit⟩ := accessB_hit hacc hc
    refine ⟨w, hw, ?_, ?_⟩
    · cases sh
      · simp only [Bool.false_eq_true, if_false] at hhit ⊢
        exact hit_offset hD1 hLs (ht.2.1 ▸ hhit)
      · simp only [if_true] at hhit ⊢
        exact hit_offset hD2 hLs (ht.2.2 ▸ hhit)
    · have hw' := hw
      unfold addrOf at hw'
      cases hv : wordLocal t i with
      | none => rw [hv] at hw'; split at hw' <;> simp_all
      | some v =>
          have hv' := wordLocal_some hv
          obtain ⟨d, hd1, hd2, hd⟩ := hsteps t v hv' (factsHold_nil t) hc
          exact ⟨d, hd1, hd2, addrOf_step hw hv' hd (baseKept hkb hc)⟩
  · cases h

def fastCostA (tbl : MlS → Option Nat) (ef efz : MlS → Bool) : ProgHOL width → Option Nat
  | .tick => some 1
  | .seq a b =>
      match fastCostA tbl ef efz a, fastCostA tbl ef efz b with
      | some x, some y => some (x + y)
      | _, _ => none
  | .ite _ a b =>
      match fastCostA tbl ef efz a, fastCostA tbl ef efz b with
      | some x, some y => some (max x y)
      | _, _ => none
  | .dec j _ e b =>
      match e, b with
      | .var .local m, b@(.dec k _ _ (.seq (.while c wb) rest)) =>
          match decMergeOk j m k c wb with
          | true =>
            match fastCostA tbl ef efz wb, fastCostA tbl ef efz rest with
            | some x, some y => some ((2 ^ width + 1) * (x + 1) + y)
            | _, _ => none
          | false => fastCostA tbl ef efz b
      | _, b => fastCostA tbl ef efz b
  | .while c b =>
      match loopOkAddr b with
      | true => (fastCostA tbl ef efz b).map fun B => (2 ^ 35 + alignSlack width + 1) * (B + 1)
      | false =>
      match loopOkSliceDbl ef c b with
      | true => (fastCostA tbl ef efz b).map fun B => (width + 1) * (B + 1)
      | false =>
      match loopP256F c b with
      | some F => (fastCostA tbl ef efz b).map fun B => F * (B + 1)
      | none =>
      match loopOk ef efz c b with
      | true => (fastCostA tbl ef efz b).map fun B => (2 ^ width + 1) * (B + 1)
      | false =>
        match loopArithF c b with
        | some F => (fastCostA tbl ef efz b).map fun B => F * (B + 1)
        | none => none
  | .call none f _ => (tbl f).map fun Bf => 1 + Bf + 0
  | .call (some (_, none)) f _ => (tbl f).map fun Bf => 1 + Bf + 0
  | .call (some (_, some (_, _, hp))) f _ =>
      match tbl f, fastCostA tbl ef efz hp with
      | some Bf, some Bh => some (1 + Bf + Bh)
      | _, _ => none
  | .decCall _ _ f _ k =>
      match tbl f, fastCostA tbl ef efz k with
      | some Bf, some Bk => some (1 + Bf + Bk)
      | _, _ => none
  | _ => some 0

theorem fastCostA_sound {tbl : MlS → Option Nat} {ef efz : MlS → Bool} (ht : TblSound σ X tbl)
    (hef : EfSound σ X.code ef) (hefz : ∀ f, efz f = true → EfArgZero σ X.code f 1)
    (hX : DomBounded X) (hat : Arith.ArithTbls σ X.code) (h256 : P256Rule σ X) :
    ∀ (p : ProgHOL width) (B : Nat), fastCostA tbl ef efz p = some B → Cost σ X p B
  | .tick, B, h => by simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_tick
  | .skip, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_skip
  | .break, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_break
  | .continue, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_continue
  | .annot _ _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_annot _ _
  | .assign _ _ _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_assign _ _ _
  | .primitive _ _ _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_primitive _ _ _
  | .store _ _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_store _ _
  | .store32 _ _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_store32 _ _
  | .storeByte _ _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_storeByte _ _
  | .extCall _ _ _ _ _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_extCall _ _ _ _ _
  | .raise _ _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_raise _ _
  | .return _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_return _
  | .shMemLoad _ _ _ _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_shMemLoad _ _ _ _
  | .shMemStore _ _ _, B, h => by
      simp only [fastCostA, Option.some.injEq] at h; subst h; exact cost_shMemStore _ _ _
  | .seq a b, B, h => by
      simp only [fastCostA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_seq (fastCostA_sound ht hef hefz hX hat h256 a x hx)
          (fastCostA_sound ht hef hefz hX hat h256 b y hy)
      · simp at h
  | .ite _ a b, B, h => by
      simp only [fastCostA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_ite (fastCostA_sound ht hef hefz hX hat h256 a x hx)
          (fastCostA_sound ht hef hefz hX hat h256 b y hy)
      · simp at h
  | .dec j sh e b, B, h => by
      rw [fastCostA.eq_def] at h
      dsimp only at h
      split at h
      · rename_i m k sh' e' c wb rest
        split at h
        · rename_i hok
          split at h
          · rename_i x y hx hy
            simp only [Option.some.injEq] at h; subst h
            exact cost_dec_merge hok (fastCostA_sound ht hef hefz hX hat h256 wb x hx)
              (fastCostA_sound ht hef hefz hX hat h256 rest y hy)
          · simp at h
        · exact cost_dec (fastCostA_sound ht hef hefz hX hat h256 _ B h)
      · exact cost_dec (fastCostA_sound ht hef hefz hX hat h256 b B h)
  | .while c b, B, h => by
      simp only [fastCostA] at h
      split at h
      · rename_i ha
        obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
        exact loopOkAddr_tight_sound hX ha (fastCostA_sound ht hef hefz hX hat h256 b Bb hb)
      · split at h
        · rename_i hd
          obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
          exact loopOkSliceDbl_sound hef hd (fastCostA_sound ht hef hefz hX hat h256 b Bb hb)
        · split at h
          · rename_i F hF
            obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
            exact h256 c b F Bb hF (fastCostA_sound ht hef hefz hX hat h256 b Bb hb)
          · split at h
            · rename_i hok
              obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
              exact loopOk_sound hef hefz hX hok (fastCostA_sound ht hef hefz hX hat h256 b Bb hb)
            · split at h
              · rename_i F hF
                obtain ⟨Bb, hb, rfl⟩ := Option.map_eq_some_iff.mp h
                exact loopArithF_sound hat hF (fastCostA_sound ht hef hefz hX hat h256 b Bb hb)
              · simp at h
  | .call none f _, B, h => by
      simp only [fastCostA] at h
      obtain ⟨Bf, hf, rfl⟩ := Option.map_eq_some_iff.mp h
      exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_, none)) f _, B, h => by
      simp only [fastCostA] at h
      obtain ⟨Bf, hf, rfl⟩ := Option.map_eq_some_iff.mp h
      exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_, some (_, _, hp))) f _, B, h => by
      simp only [fastCostA] at h
      split at h
      · rename_i Bf Bh hf hh
        simp only [Option.some.injEq] at h; subst h
        refine cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) ?_
        intro _ _ _ _ he
        simp only [Option.some.injEq, Prod.mk.injEq] at he
        obtain ⟨-, -, -, rfl⟩ := he
        exact fastCostA_sound ht hef hefz hX hat h256 hp Bh hh
      · simp at h
  | .decCall _ _ f _ k, B, h => by
      simp only [fastCostA] at h
      split at h
      · rename_i Bf Bk hf hk
        simp only [Option.some.injEq] at h; subst h
        exact cost_decCall (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl)
          (fastCostA_sound ht hef hefz hX hat h256 k Bk hk)
      · simp at h

#print axioms fastCostA_sound
end InitECandidate.Solver.SourceCost
