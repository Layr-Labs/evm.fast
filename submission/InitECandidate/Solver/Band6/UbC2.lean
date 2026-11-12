import InitECandidate.Solver.Band6.UbC1

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

/-!
# The cost walk: `htab_item` and the storage inner body (Band6)
-/

namespace InitECandidate.Solver.Band6
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

section c3
variable {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- `var rn = htab_item(tab, i); k` on a heap table of type `th0` (cost: `htab_item` is free). -/
theorem citemE (hH : HooksLawful guestC (guestHooksR (σ := σ))) {rn : MlS} {k : ProgHOL 64}
    {tabv iv : MlS} {E : Env} {F : Gam → Prop} {th0 : Nat} {TW IW : BitVec 64} {Bk : Nat}
    (hth : hkOf th0 = .tab) (hhp : (guestC.ty th0).region = .heap)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (hF : MonoF F) (ht : E tabv = some (.val (.word TW))) (hi : E iv = some (.val (.word IW)))
    (hTab : ∀ Γ, F Γ → ∃ S ∈ Γ, S.base = TW ∧ S.ty = th0)
    (hk : ∀ v, Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 (E.set rn v) (fun Γ => F Γ ∧ ItemG th0 v Γ)) k Bk) :
    Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 E F)
      (.decCall rn (.comb [.one, .one, .one]) (nm "htab_item") [lv tabv, lv iv] k) (1 + 0 + Bk) := by
  have hF' := Rec.foldOK_guestR (σ := σ)
  refine Band.costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "htab_item") (B := 0) rfl))
    (fun _ _ _ _ _ _ => trivial)
    (FunSpec.and (sumRel_fun (sumSpec_htab_item_src (σ := σ))) (FunSpec.and (Frames.funSpec_dom _)
      (funSpec_bal_gw4 hF'.hX (f := nm "htab_item") (by decide_cbv)))) ?_
  intro s hs ⟨Γ, hIV, hLL, hFF⟩ vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst hsh
  have hP : PI cs Γ0 s0 p0 (LE E F) Γ s := ⟨hIV, hLL, hFF⟩
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  rw [le_ev hP.2 ht] at ha1
  rw [le_ev hP.2 hi] at ha2
  cases ha1; cases ha2
  obtain ⟨pT, hpT, -⟩ := id hP.1.1
  obtain ⟨S, hS0, hSb, hSt⟩ := hTab Γ hP.2.2
  obtain ⟨Γ1, pp, pp', hc, hq, hT2⟩ := call_cs hH hP.1.1 hord0 hL0 (sg := itemSg) (Pre := ItemPre)
    (PW' := fun _ _ _ _ => False) (Q := ItemPost) (vs := [.val (.word TW), .val (.word IW)])
    (r := .returned v) (callee := callee) (st := st) hS (by simp [Good]) (by simp [Abortive])
    ⟨pT, hpT, argsOK_allAny (by simp [itemSg]) rfl⟩
    ⟨S, hS0, by rw [hSt]; exact hth, by rw [hSt]; exact hhp, IW, by rw [hSb]⟩
    (fun g _ => by simp [itemSg]) (fun a h => absurd h (argCells_noBuf (by simp [itemSg])))
    (fun y _ h => absurd h id) hd hbe
  refine Inv.CostP.pre (hk v) (fun t _ ht' => ?_)
  subst ht'
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 3) (by
    have := (shapeEqHOL_eq_true _ _).mp hsh
    exact (shapeEqHOL_eq_true _ _).mpr this)
  match ws, hws with
  | [a, b, c], _ =>
  have hx : Ext Γ Γ1 := hc.2.2.2.1
  obtain ⟨S', hS', hS'b, hS't, -⟩ := hx S hS0
  refine ⟨Γ1, ⟨Struct.trk_congr hH hT2 rfl rfl rfl rfl, fun g hg => (hgw g hg).trans (hIV.2 g hg)⟩,
    ?_, hF Γ Γ1 hx hFF, a, b, c, rfl, fun ha => ?_⟩
  · intro y w hy
    by_cases hyx : y = rn
    · subst hyx
      rw [env_set_self] at hy
      cases hy
      exact lk_set_self _ _ _
    · rw [env_set_ne E _ hyx] at hy
      exact (lk_set_ne _ _ (Ne.symm hyx)).trans (hLL y w hy)
  · have hq' := hq (wv [a, b, c]) rfl a b c rfl ha S' hS' (by simp [hS'b, hSb])
      (by rw [hS't, hSt]; exact hth) (by rw [hS't, hSt]; exact hhp)
    rw [hS't, hSt] at hq'
    exact hq'

end c3

end InitECandidate.Solver.Band6

#print axioms InitECandidate.Solver.Band6.citemE
