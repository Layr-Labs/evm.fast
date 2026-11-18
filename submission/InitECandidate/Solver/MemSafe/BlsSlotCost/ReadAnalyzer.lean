import InitECandidate.Solver.MemSafe.BlsSlotCost.Rule
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.ReadAnalyzer
variable {σ : Type}
def readCostA (tbl : MlS → Option Nat) (p : ProgHOL 64) : Option Nat :=
 match p with
 | .tick => some 1
 | .seq a b => match readCostA tbl a,readCostA tbl b with
   | some x,some y => some (x+y)
   | _,_ => none
 | .ite _ a b => match readCostA tbl a,readCostA tbl b with
   | some x,some y => some (max x y)
   | _,_ => none
 | .dec _ _ _ b => readCostA tbl b
 | .while _ b => if InitECandidate.Solver.MemSafe.BlsSlotCost.Read.slotReadLoopOk b then
    (readCostA tbl b).map (fun B => (2^35+alignSlack 64+1)*(B+1)) else none
 | .call none f _ => (tbl f).map (fun B => 1+B+0)
 | .call (some (_,none)) f _ => (tbl f).map (fun B => 1+B+0)
 | .call (some (_,some _)) _ _ => none
 | .decCall _ _ f _ k => match tbl f,readCostA tbl k with
   | some x,some y => some (1+x+y)
   | _,_ => none
 | _ => some 0
termination_by structural p

theorem readCostA_sound {tbl : MlS → Option Nat} (ht : TblSound σ guestCtx tbl) :
 ∀ (p : ProgHOL 64) (B : Nat), readCostA tbl p = some B → Cost σ guestCtx p B
  | .tick, B, h => by simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_tick
  | .skip, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_skip
  | .break, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_break
  | .continue, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_continue
  | .annot _ _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_annot _ _
  | .assign _ _ _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_assign _ _ _
  | .primitive _ _ _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_primitive _ _ _
  | .store _ _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_store _ _
  | .store32 _ _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_store32 _ _
  | .storeByte _ _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_storeByte _ _
  | .extCall _ _ _ _ _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_extCall _ _ _ _ _
  | .raise _ _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_raise _ _
  | .return _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_return _
  | .shMemLoad _ _ _ _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_shMemLoad _ _ _ _
  | .shMemStore _ _ _, B, h => by
      simp only [readCostA, Option.some.injEq] at h; subst h; exact cost_shMemStore _ _ _
  | .seq a b, B, h => by
      simp only [readCostA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_seq (readCostA_sound ht a x hx)
          (readCostA_sound ht b y hy)
      · simp at h
  | .ite _ a b, B, h => by
      simp only [readCostA] at h
      split at h
      · rename_i x y hx hy
        simp only [Option.some.injEq] at h; subst h
        exact cost_ite (readCostA_sound ht a x hx)
          (readCostA_sound ht b y hy)
      · simp at h
  | .dec _ _ _ b, B, h => by
      simp only [readCostA] at h
      exact cost_dec (readCostA_sound ht b B h)
  | .while c b, B, h => by
      simp only [readCostA] at h
      split at h
      · rename_i hr
        obtain ⟨Bb,hb,rfl⟩ := Option.map_eq_some_iff.mp h
        exact InitECandidate.Solver.MemSafe.BlsSlotCost.Read.slotReadLoopOk_sound hr (readCostA_sound ht b Bb hb)
      · simp at h
  | .call none f args, B, h => by
      simp only [readCostA] at h
      obtain ⟨Bf,hf,rfl⟩ := Option.map_eq_some_iff.mp h
      exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_,none)) f args, B, h => by
      simp only [readCostA] at h
      obtain ⟨Bf,hf,rfl⟩ := Option.map_eq_some_iff.mp h
      exact cost_call (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (by intro _ _ _ _ h; cases h)
  | .call (some (_,some _)) f args, B, h => by simp only [readCostA] at h; cases h
  | .decCall _ _ f _ k, B, h => by
      simp only [readCostA] at h
      split at h
      · rename_i Bf Bk hf hk
        simp only [Option.some.injEq] at h; subst h
        exact cost_decCall (fun vs bd cl rs hl => ht f Bf hf vs bd cl rs hl) (readCostA_sound ht k Bk hk)
      · simp at h
#print axioms readCostA_sound
end InitECandidate.Solver.MemSafe.BlsSlotCost.ReadAnalyzer
