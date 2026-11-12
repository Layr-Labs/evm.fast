import InitECandidate.Solver.MemSafe.Frames.StartChildLib

/-!
# `start_child`'s summary

**`sc_sumSpec`**: from summaries of `frame_open` (`open_sumSpec`), `frame_start`
(`start_sumSpec`) and `frame_mem_ptr`-keeping plain summaries of the kind-2 callees
(`destroy_storage`, `mark_account_created`, `increment_nonce`), `start_child` has the summary
with precondition `PreSC` and post `QSC`: a return pushed the child frame onto the chain with
`Φ` grown by at most the child's gas plus 2; the depth `EvmErr` leaves chain and `Φ` unchanged.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem word_of_valid {s : State σ} {x : MlS} {w0 : BitVec 64} {v : ValueHOL 64}
    (h : s.locals.lookup x = some (.val (.word w0)))
    (hv : isValidValueHOLExact s.toExact .local x v = true) : ∃ w, v = .val (.word w) := by
  unfold isValidValueHOLExact at hv
  have : lookupKvarHOLExact .local x s.toExact = some (.val (.word w0)) := h
  rw [this] at hv
  dsimp only at hv
  rw [shapeOf_val] at hv
  exact val_of_shapeEq_one' hv

/-- A state with the same memory, globals, domain and byte order continues a run. -/
theorem run_same {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {gw : List MlS} {Γ Γ' : Gam}
    {s u t : State σ} {p p' : Ptrs} (h : Run C H gw Γ s Γ' u p p') (hm : t.memory = u.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    Run C H gw Γ s Γ' t p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  exact ⟨h1, by rw [ptrsOf_congr hg]; exact h2, h3, h4, h5, G_congr hH hm hg hd hbe h6,
    by rw [hm]; exact h7, fun g hg' hgw => by rw [hg]; exact h8 g hg' hgw⟩

/-- The parameter names of `start_child`. -/
def scNames : List MlS := scParams.map Prod.fst

/-- The pre-`frame_open` tracked facts. -/
def SK (C : Cfg) (H : Hooks σ) (gwK : List MlS) (Γ : Gam) (s0 : State σ) (p : Ptrs)
    (u : State σ) : Prop :=
  (∀ x ∈ scNames, u.locals.lookup x = s0.locals.lookup x) ∧
  (∃ v, u.locals.lookup (nm "csnap") = some v ∧ ∃ w, v = .val (.word w)) ∧
  ∃ Γ1 p1, Run C H gwK Γ s0 Γ1 u p p1 ∧ p1.fp = p.fp ∧ ProtKeep C Γ s0 u

/-- A call to a `frame_mem_ptr`-keeping plain summary keeps `SK`. -/
theorem sk_call {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {gwK : List MlS} {Γ : Gam}
    {s0 s : State σ} {p : Ptrs} (hG0 : G C H Γ s0) (hk : SK C H gwK Γ s0 p s)
    {vs : List (ValueHOL 64)} (hlen : vs.length = (sg1 gwK).params.length) {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRel C H (sg1 gwK) vs (callEntryStateHOLFinite s callee) r st) (hg : Good (some r)) :
    ∃ Γ2 p2, Run C H gwK Γ s0 Γ2 st p p2 ∧ p2.fp = p.fp ∧ ProtKeep C Γ s0 st := by
  obtain ⟨-, -, Γ1, p1, hrun, hfp, hpk⟩ := hk
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G C H Γ1 (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG1
  have ⟨q, hq, _⟩ := hGe
  obtain ⟨Γ2, q1, q2, hc, hfp2⟩ := hR hg Γ1 hGe ⟨q, hq, argsOK_any (any_sg1 gwK) hlen⟩ trivial
  have hq1 : q1 = p1 := by
    have := hc.1
    rw [show ptrsOf (callEntryStateHOLFinite s callee) = ptrsOf s from ptrsOf_congr rfl,
      hrun.2.1, Option.some.injEq] at this
    exact this.symm
  subst hq1
  refine ⟨Γ2, q2, run_trans hG0 hrun (run_entry callee (run_of_sumCore (any_sg1 gwK)
    (fun g h => h) hc)), by rw [hfp2 _ _ hc.1 hc.2.1, hfp], ?_⟩
  have h3 : ProtKeep C Γ1 s st :=
    protKeep_of_sumCore (s := callEntryStateHOLFinite s callee) (any_sg1 gwK) hGe hc
  exact protKeep_trans hrun.2.2.2.1 hpk h3

/-- `f` never raises `EvmErr`. -/
def NoEvm (σ : Type) (X : Ctx 64) (f : MlS) : Prop :=
  FunSpec σ X f (fun _ _ r _ => ∀ v, r ≠ .exception nmEvmErr v)

/-- The post of `start_child`'s body. -/
def SPost (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (gwA : List MlS) (Γ : Gam) (s0 : State σ)
    (p : Ptrs) (vs : List (ValueHOL 64)) (ro : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  ∀ r, ro = some r → ∃ Γ' p', Run C H (nmEv :: nmCC :: gwA) Γ s0 Γ' t p p' ∧
    QSC C tEV tCK vs s0 Γ r t Γ'

theorem spost_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat}
    {gwA : List MlS} {Γ : Gam} {s0 : State σ} {p : Ptrs} {vs : List (ValueHOL 64)}
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : SPost C H tEV tCK gwA Γ s0 p vs ro t)
    (l : Locs) : SPost C H tEV tCK gwA Γ s0 p vs ro { t with locals := l } := by
  intro r hr
  obtain ⟨Γ', p', hrun, hq⟩ := h r hr
  refine ⟨Γ', p', run_locals hH hrun l, fun cm hcm => ⟨fun v hv => ?_, fun v hv => ?_⟩⟩
  · obtain ⟨h1, h2⟩ := (hq cm hcm).1 v hv
    exact ⟨chain_locFree.loc t l |>.mpr h1, by rw [phi_locFree.loc]; exact h2⟩
  · obtain ⟨h1, h2⟩ := (hq cm hcm).2 v hv
    exact ⟨chain_locFree.loc t l |>.mpr h1, by rw [phi_locFree.loc]; exact h2⟩

/-- Before `frame_open`: any non-return keeps the chain and `Φ`. -/
theorem spost_pre {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gwK gwA : List MlS} (hsub : ∀ g, g ∈ gwK → g ∈ gwA) (hgw : nmEv ∉ gwK ∧ nmCC ∉ gwK)
    {Γ Γ1 : Gam} {s0 t : State σ} {p p1 : Ptrs} (hG : G C H Γ s0) {fs : List Frame}
    (hch : ChainL C tEV tCK Γ s0 fs) (hrun : Run C H gwK Γ s0 Γ1 t p p1) (hfp : p1.fp = p.fp)
    (hpk : ProtKeep C Γ s0 t) {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    (hnr : ∀ v, r ≠ .returned v) :
    SPost C H tEV tCK gwA Γ s0 p vs (some r) t := by
  intro r' hr'
  cases hr'
  obtain ⟨hc1, hΦ1⟩ := chain_of_keep hF hgw hG hrun hfp hpk hch
  exact ⟨Γ1, p1, run_gw (fun g h => by simp [hsub g h]) hrun, fun cm _ =>
    ⟨fun v hv => absurd hv (hnr v), fun v _ => ⟨⟨fs, hc1⟩, hΦ1⟩⟩⟩

/-- `fld` of an update at another address. -/
theorem fld_upd_ne' {m : Mem} {a b : BitVec 64} {k : Nat} {x : BitVec 64}
    (h : b + BitVec.ofNat 64 k ≠ a) : fld (upd m a x) b k = fld m b k := by
  unfold fld; rw [rd_upd, if_neg h]

/-- The tracked facts after `frame_open` (the new frame `(e, q)` not yet on the chain). -/
def SF (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (gwF : List MlS) (Γ : Gam) (s0 : State σ)
    (p : Ptrs) (cm e0 c0 kind : BitVec 64) (u : State σ) : Prop :=
  ∃ Γ2 p2 e q, Run C H gwF Γ s0 Γ2 u p p2 ∧ ProtKeep C Γ s0 u ∧ gword u nmEv = some e ∧
    gword u nmCC = some q ∧ (⟨q, tCK, 104⟩ : Obj) ∈ Γ2 ∧
    (∀ a : BitVec 64, q.toNat ≤ a.toNat → a.toNat < q.toNat + 104 → ¬ p.Allocated a.toNat) ∧
    (∃ o ∈ Γ2, o.base = e ∧ o.ty = tEV ∧ ∀ a, InO o a → ¬ p.Allocated a.toNat) ∧
    fld u.memory e 64 = fld s0.memory cm 40 ∧ fld u.memory e 192 = 0 ∧
    (fld u.memory e 24).toNat + (fld u.memory e 40).toNat = p2.fp ∧
    fld u.memory q 0 = e0 ∧ fld u.memory q 8 = c0 ∧ fld u.memory q 16 = kind ∧
    fld u.memory e 216 = 0 ∧ (∃ y ∈ Γ2, y.lo = p.fp) ∧ p.fp < p2.fp

theorem sf_same {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {gwF : List MlS}
    {Γ : Gam} {s0 u t : State σ} {p : Ptrs} {cm e0 c0 kind : BitVec 64}
    (h : SF C H tEV tCK gwF Γ s0 p cm e0 c0 kind u) (hm : t.memory = u.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    SF C H tEV tCK gwF Γ s0 p cm e0 c0 kind t := by
  obtain ⟨Γ2, p2, e, q, hrun, hpk, he, hq, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12⟩ := h
  have hrun' := run_same hH hrun hm hg hd hbe
  refine ⟨Γ2, p2, e, q, hrun', fun a ha => by rw [hm]; exact hpk a ha,
    by rw [gword_congr hg]; exact he, by rw [gword_congr hg]; exact hq, h1, h2, h3, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, h11, h12⟩ <;> rw [hm] <;> assumption

/-- A store to `CK` slot `j` (`0 < j < 13`) of the new record keeps `SF` (`j ∉ {0, 1, 2}`). -/
theorem sf_store {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gwF : List MlS} {Γ : Gam} {s0 u : State σ} {p : Ptrs} {cm e0 c0 kind : BitVec 64}
    (h : SF C H tEV tCK gwF Γ s0 p cm e0 c0 kind u) (hord : p.Ordered) (hL : Layout C p Γ)
    {q : BitVec 64} (hq : gword u nmCC = some q) {j : Nat} (hj0 : 2 < j) (hj : j < 13)
    (x : BitVec 64) :
    SF C H tEV tCK gwF Γ s0 p cm e0 c0 kind
      { u with memory := upd u.memory (q + BitVec.ofNat 64 (8 * j)) x } := by
  obtain ⟨Γ2, p2, e, q', hrun, hpk, he, hq', h1, h2, ⟨o, ho, hob, hot, hfr⟩, h4, h5, h6, h7, h8,
    h9, h10, h11, h12⟩ := h
  rw [hq, Option.some.injEq] at hq'
  subst hq'
  have ⟨pp, hpp, hord2, hL2, _⟩ := hrun.2.2.2.2.2.1
  have hosz := ev_size hF hL2 ho hot
  have hrec : (⟨q, tCK, 104⟩ : Obj).cell j = q + BitVec.ofNat 64 (8 * j) := rfl
  have hfresh : ¬ p.Allocated (q + BitVec.ofNat 64 (8 * j)).toNat := by
    have hs : scratchEnd < 2 ^ 64 := by decide
    have := cell_addr hord2 hL2 h1 (k := 8 * j) (by show 8 * j < 104; omega)
    simp only [Obj.lo] at this
    exact h2 _ (by rw [this]; omega) (by rw [this]; omega)
  have hx : ∀ k, k < 280 → e + BitVec.ofNat 64 k ≠ q + BitVec.ofNat 64 (8 * j) := by
    intro k hk
    rw [← hob]
    refine cell_ne hord2 hL2 ho h1 (by omega) (by show 8 * j < 104; omega) (Or.inl ?_)
    intro hb
    have := base_ne_of_ty hL2 ho h1 (by rw [hot]; exact hF.ne)
    exact this hb
  have hy : ∀ k, k < 3 → q + BitVec.ofNat 64 (8 * k) ≠ q + BitVec.ofNat 64 (8 * j) := by
    intro k hk
    exact cell_ne hord2 hL2 h1 h1 (by show 8 * k < 104; omega) (by show 8 * j < 104; omega)
      (Or.inr (by omega))
  refine ⟨Γ2, p2, e, q, ?_, protKeep_ckw hord hL hpk hfresh x, he, hq, h1, h2,
    ⟨o, ho, hob, hot, hfr⟩, ?_, ?_, ?_, ?_, ?_, ?_, ?_, h11, h12⟩
  · rw [← hrec]; exact run_ckw hF hrun h1 rfl (by omega) hj (by rw [hrec]; exact hfresh) x
  · rw [fld_upd_ne' (hx 64 (by omega))]; exact h4
  · rw [fld_upd_ne' (hx 192 (by omega))]; exact h5
  · rw [fld_upd_ne' (hx 24 (by omega)), fld_upd_ne' (hx 40 (by omega))]
    exact h6
  · rw [fld_upd_ne' (hy 0 (by omega))]; exact h7
  · rw [fld_upd_ne' (hy 1 (by omega))]; exact h8
  · rw [fld_upd_ne' (hy 2 (by omega))]; exact h9
  · rw [fld_upd_ne' (hx 216 (by omega))]; exact h10

theorem csnap_not_name {x : MlS} (hx : x ∈ scNames) : x ≠ nm "csnap" := by
  rintro rfl; exact absurd hx (by decide)

theorem target_not_name {x : MlS} (hx : x ∈ scNames) : x ≠ nm "target" := by
  rintro rfl; exact absurd hx (by decide)

theorem sk_loc {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {gwK : List MlS} {Γ : Gam}
    {s0 u : State σ} {p : Ptrs} (h : SK C H gwK Γ s0 p u) (l : Locs)
    (hl : ∀ x ∈ scNames, l.lookup x = u.locals.lookup x)
    (hc : l.lookup (nm "csnap") = u.locals.lookup (nm "csnap")) :
    SK C H gwK Γ s0 p { u with locals := l } := by
  obtain ⟨hlf, ⟨v, hv, hw⟩, Γ1, p1, hrun, hfp, hpk⟩ := h
  exact ⟨fun x hx => (hl x hx).trans (hlf x hx), ⟨v, hc.trans hv, hw⟩, Γ1, p1,
    run_locals hH hrun l, hfp, hpk⟩

/-- A call to a kind-2 callee (one argument, a `SummFp`) from `SK`. -/
theorem sk_callD_hoare {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gwK gwA : List MlS} (hsubK : ∀ g, g ∈ gwK → g ∈ gwA) (hgwK : nmEv ∉ gwK ∧ nmCC ∉ gwK)
    {Γ : Gam} {s0 : State σ} {p : Ptrs} (hG : G C H Γ s0) {fs : List Frame}
    (hch : ChainL C tEV tCK Γ s0 fs) {vs0 : List (ValueHOL 64)} {f : MlS} {arg : ExpHOL 64}
    (hf : SummFp σ X C H f (sg1 gwK)) :
    HoareG σ X (SK C H gwK Γ s0 p) (callD f [arg])
      (fun r u => (r = none ∧ SK C H gwK Γ s0 p u) ∨
        (r ≠ none ∧ SPost C H tEV tCK gwA Γ s0 p vs0 r u)) := by
  have hH := hF.hooks
  refine hoareG_callD (summ_rel hf) ?_ ?_
  · intro s _ hsk vs hvs callee v st hR _
    obtain ⟨Γ2, p2, hrun2, hfp2, hpk2⟩ := sk_call hH hG hsk (evs_one hvs) hR (by simp [Good])
    obtain ⟨hlf, hcs, -⟩ := hsk
    exact Or.inl ⟨rfl, hlf, hcs, Γ2, p2, run_locals hH hrun2 _, hfp2, hpk2⟩
  · intro s _ hsk vs hvs callee r st hR _ habn
    obtain ⟨Γ2, p2, hrun2, hfp2, hpk2⟩ := sk_call hH hG hsk (evs_one hvs) hR (good_of_abn habn)
    exact Or.inr ⟨by simp, spost_pre hF hsubK hgwK hG hch (run_emptyLocals hH hrun2) hfp2 hpk2
      (not_returned_of_abn habn)⟩

end InitECandidate.Solver.MemSafe.Frames
