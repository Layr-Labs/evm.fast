import InitECandidate.Solver.MemSafe.DivCost.Div32
import InitECandidate.Solver.MemSafe.DivCost.Keep
import InitECandidate.Solver.MemSafe.DivCost.Flag
import InitECandidate.Solver.MemSafe.Helpers.Divmnu
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.DivCost.Qhat
variable {σ : Type} {X : Ctx 64}
def QBound : PanSemStateFiniteExact 64 σ → Prop := InitECandidate.Solver.MemSafe.DivCost.Keep.Bound (nm "qhat") 4294967295

theorem qr_bound (hC : X.code.lookup=guestCode) :
 Hoare σ X (fun _ => True) InitECandidate.Solver.MemSafe.Helpers.dvQR
  (fun r t => r=none ∧ QBound t) := by
 unfold InitECandidate.Solver.MemSafe.Helpers.dvQR
 refine InitECandidate.Solver.Spec.hoare_ite ?_ ?_
 · refine InitECandidate.Solver.Spec.hoare_seq (R := fun r t => r=none ∧ QBound t) ?_
    (fun _ _ _ hr _ h => False.elim (hr h.1)) ?_
   · refine InitECandidate.Solver.Spec.hoare_assign fun s hs hp v hv hvalid => ?_
     rw [ev_cw] at hv
     cases hv
     exact ⟨rfl,4294967295,lk_set_self _ _ _,by decide⟩
   · refine InitECandidate.Solver.Spec.hoare_assign fun s hs ⟨_,Q,hQ,hle⟩ v hv hvalid => ?_
     refine ⟨rfl,Q,?_,hle⟩
     rw [lk_set_ne _ _ (by decide)];exact hQ
 · refine hoare_decCallS (InitECandidate.Solver.MemSafe.DivCost.Div32.funSpec_div64by32 hC) ?_
   intro s hs hp vs hvs callee v st hR hst hshape
   obtain ⟨Q,R,rfl,hQ⟩ := hR _ rfl
   refine hoare_post (Q := fun r t => r=none ∧ QBound t) ?_ ?_
   · refine InitECandidate.Solver.Spec.hoare_seq (R := fun r t => r=none ∧ QBound t) ?_
      (fun _ _ _ hr _ h => False.elim (hr h.1)) ?_
     · refine InitECandidate.Solver.Spec.hoare_assign fun t ht he vv hv hvalid => ?_
       subst t
       have hqr : (setVarHOLFinite (nm "qr") (.rStruct [.val (.word Q),R]) {st with locals := s.locals}).locals.lookup (nm "qr") = some (.rStruct [.val (.word Q),R]) := lk_set_self _ _ _
       have heqr : ev (setVarHOLFinite (nm "qr") (.rStruct [.val (.word Q),R]) {st with locals := s.locals}) (lv (nm "qr")) = some (.rStruct [.val (.word Q),R]) := by
        rw [ev_lv];exact hqr
       rw [ev_rfield heqr 0] at hv
       change some (.val (.word Q))=some vv at hv
       cases hv
       exact ⟨rfl,Q,lk_set_self _ _ _,by omega⟩
     · refine InitECandidate.Solver.Spec.hoare_assign fun t ht ⟨_,W,hW,hle⟩ vv hv hvalid => ?_
       refine ⟨rfl,W,?_,hle⟩
       rw [lk_set_ne _ _ (by decide)];exact hW
   · intro r t ht htracked ⟨hr,W,hW,hle⟩
     refine ⟨hr,W,?_,hle⟩
     rw [lookup_resVarEq_ne _ _ (by decide)];exact hW

def flagBody : ProgHOL 64 := match InitECandidate.Solver.MemSafe.Helpers.dvAgain with | .while _ b => b | _ => .skip

theorem flag_cost : Inv.CostP σ X QBound InitECandidate.Solver.MemSafe.Helpers.dvAgain 4294967297 := by
 have hb : Cost σ X flagBody 0 := by
  exact cost_seq (cost_assign _ _ _) (cost_ite (cost_ite (cost_seq (cost_assign _ _ _)
   (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))) cost_skip) cost_skip)
 have hn : NoCont σ flagBody := by
  apply noContB_sound
  decide_cbv
 have hp : ∀ V, HoareN σ (fun s => CondTrue s (.cmp .equal (lv (nm "again")) (cw 1)) ∧
   InitECandidate.Solver.SourceCost.wordOf s (nm "qhat")=V) flagBody
   (fun t => ¬ CondTrue t (.cmp .equal (lv (nm "again")) (cw 1)) ∨ InitECandidate.Solver.SourceCost.wordOf t (nm "qhat")<V) := by
  intro V
  exact hoare_knuthD (by decide) (by decide) (by decide) V
 have hf := InitECandidate.Solver.MemSafe.DivCost.Flag.bounded (M := 4294967295) (B := 0) (nm "qhat") hb hn hp
 apply hf.pre
 intro s hs ⟨Q,hQ,hle⟩
 unfold InitECandidate.Solver.SourceCost.wordOf
 rw [hQ]
 exact hle
theorem qr_cost (hC : X.code.lookup=guestCode) :
 Cost σ X InitECandidate.Solver.MemSafe.Helpers.dvQR 34 := by
 unfold InitECandidate.Solver.MemSafe.Helpers.dvQR
 exact cost_ite (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))
  (cost_decCall (InitECandidate.Solver.MemSafe.DivCost.Div32.callee_cost hC) (cost_seq (cost_assign _ _ _) (cost_assign _ _ _)))

theorem hole_cost {tail : ProgHOL 64} {Bt : Nat} (hC : X.code.lookup=guestCode)
 (htail : Cost σ X tail Bt) :
 Cost σ X (.seq InitECandidate.Solver.MemSafe.Helpers.dvQR
  (.dec (nm "again") .one (cw 1) (.seq InitECandidate.Solver.MemSafe.Helpers.dvAgain tail)))
  (34+(4294967297+Bt)) := by
 apply Inv.cost_of_costP_true
 refine Inv.costP_seq (R := QBound) (Inv.costP_of_cost (qr_cost hC))
  (hoare_post (qr_bound hC) (fun _ _ _ _ h _ => h.2)) ?_
 refine Inv.costP_dec fun s hs hp v hv hshape => ?_
 have hf := Inv.costP_seq (R := fun _ => True) flag_cost (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost htail)
 apply hf.pre
 intro t ht he
 subst t
 obtain ⟨Q,hQ,hle⟩ := hp
 refine ⟨Q,?_,hle⟩
 rw [lk_set_ne _ _ (by decide)]
 exact hQ
#print axioms qr_bound
#print axioms flag_cost
#print axioms qr_cost
#print axioms hole_cost
end InitECandidate.Solver.MemSafe.DivCost.Qhat
