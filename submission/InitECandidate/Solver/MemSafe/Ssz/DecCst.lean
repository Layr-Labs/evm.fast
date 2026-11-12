import InitECandidate.Solver.MemSafe.Builtin

set_option autoImplicit false

/-!
# Hand steps in front of a checked continuation

The checker's invariant `IG a A Γ Θ` (`Sound0.lean`) can be established by hand for a prefix
of a body and then handed to `chk_sound` for the rest. This lets a body whose only obstacle is
a value the abstract domain does not know (e.g. `ceil_log2(c)` on a constant) be checked by the
checker itself, with the value supplied by a functional spec.

* **`decCall_cst`**: `var x = f(args); k` where every good result of `f` on the argument values
  is the return of the word `w` with memory and globals kept: `k` is run with `x ↦ cst w`.
* **`csumm_of_pre`**: `summ_of_chk` (`Func.lean`) with the checker run replaced by any
  `HoareG` proof of the body from the entry environment `initEnv` into `SPost`.
-/

namespace InitECandidate.Solver.MemSafe.Ssz
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

/-- **`var x = f(args); k` with a known word result.** -/
theorem decCall_cst {a : Act σ} (ha : ActOK a X) {A : AEnv} {x f : MlS}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {rt : List RT} {o : AOut} {w : BitVec 64}
    {vs0 : List (ValueHOL 64)}
    (hf : FunSpec σ X f (fun vs s r t => Good (some r) → vs = vs0 →
      r = .returned (.val (.word w)) ∧ t.memory = s.memory ∧ t.globals = s.globals))
    (hargs : ∀ (Γ : Gam) (Θ : List (BitVec 64 × Nat)) (s : State σ), InCtx s X →
      IG a A Γ Θ s → ∀ vs, evs s args = some vs → vs = vs0)
    (hk : ∀ Γ Θ, HoareG σ X (IG a ⟨setL x (.cst w) A.L, A.T⟩ Γ Θ) k (SPost a rt o Γ Θ))
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.decCall x .one f args k)
      (SPost a rt ⟨o.nrm.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)),
        o.brk.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv)),
        o.cnt.map (fun B => (⟨restL x (A.L.lookup x) B.L, B.T⟩ : AEnv))⟩ Γ Θ) := by
  have hf' := funSpec_and hf (funSpec_be' f)
  refine hoareG_decCall hf' ?_ ?_
  · intro s hs hig vs hvs callee v st ⟨hR, hbe⟩ hctx _
    have hv0 := hargs Γ Θ s hs hig vs hvs
    obtain ⟨hr, hm, hg⟩ := hR (by simp [Good]) hv0
    cases hr
    obtain ⟨p, hh, ht, hl⟩ := hig
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 : Heap a Γ p (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }) :=
      heap_congr (s := s) ha.hH hm hg hd hbe hh
    have hl1 : LocalsOK ⟨setL x (.cst w) A.L, A.T⟩ Γ Θ
        (setVarHOLFinite x (.val (.word w)) { st with locals := s.locals }) :=
      locals_set (s := { st with locals := s.locals }) hl (av := .cst w) ⟨w, rfl, rfl⟩
    intro t htc hst hgood
    subst hst
    exact cont_post ha.hH hl (later_refl Γ Θ) (hk Γ Θ _ htc ⟨p, hh1, ht, hl1⟩ hgood)
  · intro s hs hig vs hvs callee r st ⟨hR, _⟩ _ habn
    have hv0 := hargs Γ Θ s hs hig vs hvs
    have hg0 : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    obtain ⟨hr, -, -⟩ := hR hg0 hv0
    subst hr
    rcases habn with ⟨e, v, h⟩ | ⟨e, h⟩ <;> cases h

/-- A one-word local with abstraction `cst c` evaluates to `c`. -/
theorem evs_lv_cst {a : Act σ} (ha : ActOK a X) {A : AEnv} {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {s : State σ} (hs : InCtx s X) (hig : IG a A Γ Θ s) {y : MlS}
    {c : BitVec 64} (hy : aev a.C A chkFuel (lv y) = .cst c) {vs : List (ValueHOL 64)}
    (hvs : evs s [lv y] = some vs) : vs = [.val (.word c)] := by
  obtain ⟨p, hh, -, hl⟩ := hig
  obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) [lv y] vs hvs
  obtain ⟨v0, rfl⟩ := List.length_eq_one_iff.mp (by simpa using hlen)
  have h0 := hvok 0 (by simp) (by simp)
  simp only [List.getElem_cons_zero] at h0
  rw [hy] at h0
  obtain ⟨w, rfl, hw⟩ := h0
  simp only [AVok] at hw
  rw [hw]

/-- **A capability summary from any proof of the body in the checker's invariant.** -/
theorem csumm_of_pre {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hcode : X.code.lookup f = some (ps, bd, rsh)) (hlen : sg.params.length = ps.length)
    (hbd : ∀ vs (s0 : State σ) Γ0 p0, ActOK (actOf C H sg [] vs s0 Γ0 p0) X →
      ∀ Γ Θ, ∃ o : AOut, HoareG σ X (IG (actOf C H sg [] vs s0 Γ0 p0)
        (initEnv ps sg.params 0 ⟨[], []⟩) Γ Θ) bd (SPost (actOf C H sg [] vs s0 Γ0 p0) sg.ret o Γ Θ)) :
    CSumm σ X C H f sg [] := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hreq
  obtain ⟨rfl, -, hvl, hbind⟩ := lookupCode_gen hcode hl
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS (cs := []) rfl hG hps hargs hreq
  obtain ⟨Θ, hig⟩ := init_ig (a := actOf C H sg [] vs s Γ p1) hH hh ps hlen hvl hargs
    (fun i hi hv => by rw [hloc]; exact hbind i hi hv) 0 ⟨[], []⟩ []
    (Nat.zero_le _) ⟨rfl, fun k td hk => by simp at hk⟩ (fun x av hx => by simp at hx)
  simp only [List.drop_zero] at hig
  obtain ⟨o, Hb⟩ := hbd vs s Γ p1 ha Γ Θ
  have Hs := Hb s hs hig (by rw [hr]; exact hgood)
  rw [hr] at Hs
  have core : ∃ Γ' p', Ext Γ Γ' ∧ Heap (actOf C H sg [] vs s Γ p1) Γ' p'
      (evaluateHOLFiniteState s body).2 ∧
      (∀ v, r = .returned v → RetOK Γ' p1 p' vs sg.ret v) := by
    rcases r with _ | _ | _ | _ | _ | v | ⟨e, v⟩ | e
    all_goals first
      | (obtain ⟨B, Γ', Θ', -, hlat, p', hh', -, -⟩ := Hs
         exact ⟨Γ', p', hlat.1, hh', fun v h => by cases h⟩)
      | (obtain ⟨Γ', p', he, hh', hret⟩ := Hs
         exact ⟨Γ', p', he, hh', fun v' h => by cases h; exact hret⟩)
      | (rcases Hs with hab | ⟨Γ', p', he, hh'⟩
         · exact absurd hab hna
         · exact ⟨Γ', p', he, hh', fun v h => by cases h⟩)
  obtain ⟨Γ', p', hext, hh', hret⟩ := core
  exact ⟨Γ', p1, p', act_exit rfl hps hext hh' hret, trivial⟩

end InitECandidate.Solver.MemSafe.Ssz

#print axioms InitECandidate.Solver.MemSafe.Ssz.decCall_cst
#print axioms InitECandidate.Solver.MemSafe.Ssz.csumm_of_pre
