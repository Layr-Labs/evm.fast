import InitECandidate.Solver.MemSafe.BalEnc.EntryL
import InitECandidate.Solver.MemSafe.BalEnc.Callee

set_option autoImplicit false

/-!
# The sort prefix of a list section, and `dec` with exact states
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

/-- `var x = e; body` from a state predicate, the body run from the exact state. -/
theorem hoareG_decX {X : Ctx 64} {a : AwE σ} (hK : AwOK a) {P : State σ → Prop} {x : MlS}
    {e : ExpHOL 64} {body : ProgHOL 64} {fs fo fb : List Fct} {Ret : ValueHOL 64 → Prop}
    (hPA : ∀ s : State σ, InCtx s X → P s → APre a (Hs fs) s)
    (hxo : ∀ f ∈ fo, x ∉ f.vars) (hsub : ∀ f ∈ fo, f ∈ fb)
    (h : ∀ s : State σ, InCtx s X → P s → ∀ v, ev s e = some v →
      shapeEqHOL .one (shapeOfHOLExact v) = true →
      HoareG σ X (fun t => t = setVarHOLFinite x v s) body (AQ a (Hs fb) Ret)) :
    HoareG σ X P (.dec x .one e body) (AQ a (Hs fo) Ret) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  have hp' := hPA s hs hp
  refine hoareG_conseq (h s hs hp v hv hsh) (fun t _ ht => ht) ?_
  intro r t _ _ hq
  exact ⟨hq.1, fun hr => ⟨awInv_same hK (hq.2.1 hr).1 rfl rfl rfl rfl,
    hs_res hxo (hs_mono (hq.2.1 hr).2 hsub)⟩, fun v hv => ⟨awInv_same hK (hq.2.2 v hv).1 rfl rfl rfl rfl,
    (hq.2.2 v hv).2⟩⟩


theorem lk_set_ne' {s : State σ} {n q : MlS} (v : ValueHOL 64) (h : n ≠ q) :
    (setVarHOLFinite n v s).locals.lookup q = s.locals.lookup q := lk_set_ne s v h

theorem lk_set_self' {s : State σ} {n : MlS} (v : ValueHOL 64) :
    (setVarHOLFinite n v s).locals.lookup n = some v := lk_set_self s n v

/-- **The prefix of a list section**: `n = lds (l + 8); lp = lds l; sort_elems(lp, n, E, 0, tmp); k`,
where `l` is `0` or a header of type `Tt` of the entry typing (`0` cannot be loaded from). -/
theorem hoareG_loadSort {a : AwE σ} (hK : AwOK a) (hc : CsE a) {l n lp : MlS} {Tt E : Nat}
    (hTt : Tt ∈ lstTys) (hE : lstE Tt = E) {fs fo fb : List Fct} {k : ProgHOL 64}
    {Ret : ValueHOL 64 → Prop}
    (hlf : Fct.prop l (fun L => L = 0 ∨ Fits a.Γ0 (.ptr Tt) L) ∈ fs) (htmp : wd bTmp ∈ fs)
    (hnl : n ≠ l) (hlpn : lp ≠ n) (hlpl : lp ≠ l) (hnt : n ≠ bTmp) (hlpt : lp ≠ bTmp)
    (hxn : ∀ f ∈ fs, n ∉ f.vars) (hxlp : ∀ f ∈ fs, lp ∉ f.vars)
    (hrest : HoareG σ guestCtx (APre a (Hs (wd lp :: wd n :: fs))) k (AQ a (Hs fb) Ret))
    (hfo : ∀ f ∈ fo, f ∈ fb) (hon : ∀ f ∈ fo, n ∉ f.vars) (holp : ∀ f ∈ fo, lp ∉ f.vars) :
    HoareG σ guestCtx (APre a (Hs fs))
      (.dec n .one (ld1 l 8) (.dec lp .one (ld1 l 0)
        (.seq (callD (nm "sort_elems") [lv lp, lv n, cw E, cw 0, lv bTmp]) k)))
      (AQ a (Hs fo) Ret) := by
  subst hE
  refine hoareG_decX hK (P := APre a (Hs fs)) (fun _ _ h => h) hon (fun f hf => hf) ?_
  intro s hs hP v1 hv1 hsh1
  obtain ⟨w1, hw1, hd1, rfl⟩ := Struct.ev_load1_inv hv1
  obtain ⟨L, hL, hLf⟩ := hP.2 _ hlf
  rw [ev_add2 (ev_lw hL) (ev_cw _ 8)] at hw1
  cases hw1
  have hFit : Fits a.Γ0 (.ptr Tt) L := by
    rcases hLf with rfl | h
    · exfalso
      have := nullSafe_guestCtx _ (hs.2.1 ▸ hd1)
      revert this
      simp [heapBase]
    · exact h
  obtain ⟨Tm, hTm, -⟩ := hP.2 _ htmp
  have hP1 : APre a (Hs (wd n :: fs)) (setVarHOLFinite n (.val (.word (rd s.memory (L + BitVec.ofNat 64 8)))) s) :=
    ⟨awInv_same hK hP.1 rfl rfl rfl rfl,
      hs_cons (bd_wd _ _ _) (hs_upd hxn hP.2)⟩
  refine hoareG_decX hK (P := fun t => t = setVarHOLFinite n (.val (.word (rd s.memory (L + BitVec.ofNat 64 8)))) s)
    (fs := wd n :: fs) (fo := fo) (fb := fb) (fun t _ ht => by subst ht; exact hP1) holp hfo ?_
  intro s2 hs2 hs2eq v2 hv2 hsh2
  subst hs2eq
  obtain ⟨w2, hw2, hd2, rfl⟩ := Struct.ev_load1_inv hv2
  have hLl : (setVarHOLFinite n (.val (.word (rd s.memory (L + BitVec.ofNat 64 8)))) s).locals.lookup l =
      some (.val (.word L)) := by rw [lk_set_ne' _ hnl]; exact hL
  rw [ev_add2 (ev_lw hLl) (ev_cw _ 0)] at hw2
  cases hw2
  refine hoareG_seqP (L2 := Hs (wd lp :: wd n :: fs)) (P := fun t => t = setVarHOLFinite lp
    (.val (.word (rd s.memory (L + BitVec.ofNat 64 0))))
    (setVarHOLFinite n (.val (.word (rd s.memory (L + BitVec.ofNat 64 8)))) s)) ?_ hrest
  refine hoareG_callAsP hK (asp_sort_list hK hc) (L := Hs (wd lp :: wd n :: fs))
    (L' := Hs (wd lp :: wd n :: fs)) ?_ ?_ (fun _ _ _ _ hL _ _ => hL)
  · intro t ht h
    subst h
    exact ⟨awInv_same hK hP1.1 rfl rfl rfl rfl, hs_cons (bd_wd _ _ _)
      (hs_cons (bd_upd hlpn (bd_wd _ _ _)) (hs_upd hxlp (hs_upd hxn hP.2)))⟩
  · intro t ht h vs hvs callee
    subst h
    obtain ⟨v1', v2', v3', v4', v5', rfl, f1, f2, f3, f4, f5⟩ := evs_five hvs
    rw [ev_lw (lk_set_self' _)] at f1
    rw [ev_lw (by rw [lk_set_ne' _ hlpn]; exact lk_set_self' _)] at f2
    rw [ev_cw] at f3 f4
    rw [ev_lw (by rw [lk_set_ne' _ hlpt, lk_set_ne' _ hnt]; exact hTm)] at f5
    simp only [Option.some.injEq] at f1 f2 f3 f4 f5
    subst f1 f2 f3 f4 f5
    exact ⟨L, Tt, Tm, hTt, hFit, rfl⟩

end InitECandidate.Solver.MemSafe.BalEnc
