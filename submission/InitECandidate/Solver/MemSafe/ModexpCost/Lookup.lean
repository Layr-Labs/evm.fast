import InitECandidate.Solver.MemSafe.Mod.Code
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ModexpCost
theorem lookup {vs : List (ValueHOL 64)} {body : ProgHOL 64}
 {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL}
 (h : lookupCodeHOLFinite guestCode (nm "modexp") vs = some (body,callee,rs)) :
 body = Mod.mxBody ∧ ∃ A B C D E F G, vs = [A,B,C,D,E,F,G] ∧ callee.lookup (nm "elen") = some D := by
 unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
 split at h
 · simp at h
 · rename_i body' cl rs' hx
   simp only [Option.some.injEq, Prod.mk.injEq] at h
   obtain ⟨rfl,rfl,rfl⟩ := h
   unfold lookupCodeHOLExact at hx
   rw [Mod.code_modexp] at hx
   dsimp only [Mod.mxPs] at hx
   split at hx
   · rename_i hcond
     simp only [Option.some.injEq,Prod.mk.injEq] at hx
     obtain ⟨rfl,rfl,rfl⟩ := hx
     obtain ⟨_,hlen,hall⟩ := hcond
     match vs,hlen with
     | [A,B,C,D,E,F,G],_ =>
       refine ⟨rfl,A,B,C,D,E,F,G,rfl,?_⟩
       simp [nm]
       all_goals cbv
   · simp at hx
#print axioms lookup
end InitECandidate.Solver.MemSafe.ModexpCost
