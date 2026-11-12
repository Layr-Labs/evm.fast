import InitECandidate.Solver.MemSafe.Entry

/-!
# From a checked body to a summary (M1)

`summ_of_chk`: if the checker accepts the body of `f` from the entry environment of its
signature, then `Summ σ X C H f sg` — the plain summary of the frozen interface.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem locals_setL_same {A : AEnv} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {s : State σ}
    (h : LocalsOK A Γ Θ s) {x : MlS} {av : AV} {v : ValueHOL 64}
    (hx : s.locals.lookup x = some v) (hv : VOk Γ Θ av v) (T : List (Option TD)) :
    LocalsOK ⟨setL x av A.L, T⟩ Γ Θ s := by
  intro y bv hy
  by_cases hyx : y = x
  · subst hyx
    rw [lookup_setL_eq] at hy
    refine ⟨v, hx, ?_⟩
    cases av <;> simp at hy <;> (try subst hy) <;> exact hv
  · rw [lookup_setL_ne hyx] at hy
    exact h y bv hy

theorem argAV_sound {C : Cfg} {Γ : Gam} {p : Ptrs} {Θ : List (BitVec 64 × Nat)}
    {vs : List (ValueHOL 64)} {pt : PT} {sh : ShapeHOL} {v : ValueHOL 64}
    (hok : ArgOK C Γ p vs pt v) (hsh : shapeEqHOL sh (shapeOfHOLExact v) = true) :
    VOk Γ Θ (argAV pt sh) v := by
  unfold argAV
  cases sh with
  | one =>
      obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsh
      cases pt with
      | fits k =>
          obtain ⟨w', hw', hf⟩ := hok
          simp only [wordOf, Option.some.injEq] at hw'
          subst hw'
          exact word_vok (slotAV_isWord _) (slotAV_sound hf)
      | eq c =>
          simp only [ArgOK, wordOf, Option.some.injEq] at hok
          exact ⟨w, rfl, hok⟩
      | _ => exact ⟨w, rfl, trivial⟩
  | _ => exact shAV_vok ((shapeEqHOL_eq_true _ _).mp hsh).symm

/-- The entry invariant, by induction over the parameters. -/
theorem init_ig {a : Act σ} (hH : HooksLawful a.C a.H) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) (ps : List (MlS × ShapeHOL)) (hlen : a.sg.params.length = ps.length)
    (hvl : ps.length = a.vs.length)
    (hargs : ArgsOK a.C Γ p a.sg.params a.vs)
    (hbind : ∀ i (hi : i < ps.length) (hv : i < a.vs.length),
      s.locals.lookup ps[i].1 = some a.vs[i] ∧
        shapeEqHOL ps[i].2 (shapeOfHOLExact a.vs[i]) = true) :
    ∀ i A Θ, i ≤ ps.length → TempsOK a A Γ p Θ → LocalsOK A Γ Θ s →
      ∃ Θ', IG a (initEnv (ps.drop i) (a.sg.params.drop i) i A) Γ Θ' s := by
  intro i
  induction h : ps.length - i generalizing i with
  | zero =>
      intro A Θ hi ht hl
      have : ps.drop i = [] := by simp; omega
      rw [this]
      exact ⟨Θ, p, hh, ht, hl⟩
  | succ n ih =>
      intro A Θ hi ht hl
      have hi' : i < ps.length := by omega
      have hpi : i < a.sg.params.length := by omega
      have hvi : i < a.vs.length := by omega
      rw [List.drop_eq_getElem_cons hi', List.drop_eq_getElem_cons hpi]
      obtain ⟨hlk, hsh⟩ := hbind i hi' hvi
      have hok := hargs.2 i a.sg.params[i] a.vs[i] (List.getElem?_eq_getElem hpi)
        (List.getElem?_eq_getElem hvi)
      have hstep : ps.length - (i + 1) = n := by omega
      unfold initEnv
      generalize hpt : a.sg.params[i] = pt at hok ⊢
      generalize ps[i] = q at hlk hsh ⊢
      obtain ⟨x, sh⟩ := q
      split
      · -- a buffer argument: a new temporary
        rename_i n' _
        obtain ⟨w, hw, hbuf⟩ := hok
        have hv : a.vs[i] = .val (.word w) := by
          cases hvv : a.vs[i] with
          | val x' => cases x' with
            | word w' => rw [hvv] at hw; simp [wordOf] at hw; rw [hw]
          | rStruct _ => rw [hvv] at hw; simp [wordOf] at hw
          | nStruct _ _ => rw [hvv] at hw; simp [wordOf] at hw
        refine ih (i + 1) hstep _ (Θ ++ [(w, n')]) (by omega) ⟨?_, ?_⟩ ?_
        · simp [ht.1]
        · intro k td hk
          rw [List.getElem?_append] at hk
          split at hk
          · obtain ⟨q, hq, hok'⟩ := ht.2 k td hk
            refine ⟨q, ?_, hok'⟩
            rw [List.getElem?_append_left (by rw [ht.1]; assumption)]
            exact hq
          · simp only [List.getElem?_singleton] at hk
            split at hk
            · simp only [Option.some.injEq] at hk
              subst hk
              rename_i hk1 hk2
              have hkk : k = A.T.length := by omega
              subst hkk
              refine ⟨w, ?_, ⟨hbuf, fun c hc => ⟨i, w, ?_, Or.inl ⟨n', ?_, hc⟩⟩⟩⟩
              · rw [List.getElem?_append_right (by rw [ht.1]), ht.1]; simp
              · unfold argW; rw [List.getElem?_eq_getElem hvi, hv]; rfl
              · rw [List.getElem?_eq_getElem hpi, hpt]
            · cases hk
        · have hl' := locals_mono (List.prefix_append Θ [(w, n')]) hl
          refine locals_setL_same hl' hlk ?_ _
          rw [hv]
          refine ⟨w, rfl, w, n', ?_, by simp⟩
          rw [List.getElem?_append_right (by rw [ht.1]), ht.1]
          simp
      · -- any other argument
        exact ih (i + 1) hstep _ Θ (by omega) ht
          (locals_setL_same hl hlk (argAV_sound hok hsh) _)

theorem allocCfg_upg {C : Cfg} (hAC : AllocCfg C) {sg : Sig} {cs : List Cap}
    (hcs : capsOK C sg cs = true) : AllocCfg (upg C cs) := by
  intro g hg
  have hne : ∀ c ∈ cs, c.g ≠ anyG → c.g ≠ g := fun c hc hga he =>
    (hAC g hg).2 (he ▸ (capsOK_spec hcs hc hga).1)
  exact ⟨by rw [lookup_upg_of hne]; exact (hAC g hg).1, (hAC g hg).2⟩

/-- The activation of a capability function at its entry. -/
def actOf (C : Cfg) (H : Hooks σ) (sg : Sig) (cs : List Cap) (vs : List (ValueHOL 64))
    (s : State σ) (Γ : Gam) (p : Ptrs) : Act σ :=
  ⟨upg C cs, H, sg, vs, s, Γ, p, C, cs⟩

theorem act_entry {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {cs : List Cap} (hcs : capsOK C sg cs = true) {vs : List (ValueHOL 64)}
    {s : State σ} {Γ : Gam} {p : Ptrs} (hG : G C H Γ s) (hps : ptrsOf s = some p)
    (hargs : ArgsOK C Γ p sg.params vs) (hreq : ReqOK cs s Γ) :
    ActOK (actOf C H sg cs vs s Γ p) X ∧ Heap (actOf C H sg cs vs s Γ p) Γ p s := by
  obtain ⟨p2, hp2, hord2, hL2, -⟩ := id hG
  have hpp : p2 = p := by rw [hps] at hp2; exact (Option.some.inj hp2).symm
  subst hpp
  exact ⟨⟨hH, hC, hord2, fun o ho => (hL2.1 o ho).2.1, hal, allocCfg_upg hAC hcs, hargs, hNS, rfl,
    hcs, hreq, fun o ho => (hL2.1 o ho).2.2.2.1⟩,
    ⟨G_upg hG hreq, hps, mono_refl p2, ext_refl Γ, newFresh_refl Γ p2 p2, fun _ _ => rfl,
      fun _ _ _ => rfl, fun _ => newFresh_refl Γ p2 p2⟩⟩

/-- The summary core at the exit of a capability function. -/
theorem act_exit {C : Cfg} {H : Hooks σ} {sg : Sig} {cs : List Cap} (hcs : capsOK C sg cs = true)
    {vs : List (ValueHOL 64)} {s : State σ} {Γ : Gam} {p : Ptrs} (hps : ptrsOf s = some p)
    {Γ' : Gam} {p' : Ptrs} {t : State σ} {r : PanSemResultExact 64}
    (hext : Ext Γ Γ') (hh : Heap (actOf C H sg cs vs s Γ p) Γ' p' t)
    (hret : ∀ v, r = .returned v → RetOK Γ' p p' vs sg.ret v) :
    SumCore C H sg (fun x => ProtCell C Γ x ∧ CapPW cs s Γ x) Γ s vs r t Γ' p p' := by
  obtain ⟨hG', hpt, hmono, -, hnf, hmod, hpg, hng⟩ := hh
  exact ⟨hps, hpt, hmono, hext, hnf, G_of_upg hcs hG', hmod, hpg, hng, hret⟩

/-- **From a checked body to its capability summary.** -/
theorem summ_of_chk {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hWS : WinSpecs σ X)
    (hNS : NullSafe X) {sg : Sig} {cs : List Cap} (hcs : capsOK C sg cs = true)
    {E : CEnv} (hEC : E.C = upg C cs) (hT : CTabSound σ X C H E.tab)
    (hEsg : E.sg = sg) (hEc : E.caps = cs) {f : MlS} {ps : List (MlS × ShapeHOL)}
    {bd : ProgHOL 64} {rsh : ShapeHOL} (hcode : X.code.lookup f = some (ps, bd, rsh))
    (hlen : sg.params.length = ps.length) {o : AOut}
    (hchk : chk E (initEnv ps sg.params 0 ⟨[], []⟩) bd = some o) :
    CSumm σ X C H f sg cs := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hreq
  obtain ⟨rfl, -, hvl, hbind⟩ := lookupCode_gen hcode hl
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS hcs hG hps hargs hreq
  obtain ⟨Θ, hig⟩ := init_ig (a := actOf C H sg cs vs s Γ p1) hH hh ps hlen hvl hargs
    (fun i hi hv => by rw [hloc]; exact hbind i hi hv) 0 ⟨[], []⟩ []
    (Nat.zero_le _) ⟨rfl, fun k td hk => by simp at hk⟩ (fun x av hx => by simp at hx)
  simp only [List.drop_zero] at hig
  have Hs := chk_sound (a := actOf C H sg cs vs s Γ p1) ha hEC hT hEsg hEc hWS _ _ o hchk Γ Θ s
    hs hig (by rw [hr]; exact hgood)
  rw [hr, hEsg] at Hs
  have core : ∃ Γ' p', Ext Γ Γ' ∧ Heap (actOf C H sg cs vs s Γ p1) Γ' p'
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
  exact ⟨Γ', p1, p', act_exit hcs hps hext hh' hret, trivial⟩

end InitECandidate.Solver.MemSafe
