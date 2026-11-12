import InitECandidate.Solver.MemSafe.CallSound

/-!
# Soundness of the call rule: the call forms (M1)

`TabSound σ X C H E.tab` (every table entry's plain summary holds) is the hypothesis.

* `findSig_spec`: what `findSig` guarantees.
* `call_core`: from the caller's invariant and an accepted call, a callee run that ends with
  any good result gives the callee's `SumCore` and the caller's heap part after it.
* `callD_post` (`f(args);`).
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem findSig_spec {E : CEnv} {A : AEnv} {f : MlS} {avs : List AV} {sg : Sig}
    (h : findSig E A f avs = some sg) :
    ∃ cs, (f, sg, cs) ∈ E.tab ∧ argsChk E A sg.params avs = true ∧ (∀ g ∈ sg.gw, g ∈ E.sg.gw) ∧
      (sg.grows = true → E.sg.grows = true ∧ winOpen A = false) ∧ capSub cs E.caps = true := by
  unfold findSig at h
  obtain ⟨q, hq, rfl⟩ := Option.map_eq_some_iff.mp h
  have hm := List.mem_of_find?_eq_some hq
  have hp := List.find?_some hq
  simp only [Bool.and_eq_true, beq_iff_eq, List.all_eq_true] at hp
  obtain ⟨⟨⟨⟨hf, hargs⟩, hgw⟩, hgr⟩, hcs⟩ := hp
  obtain ⟨f', sg', cs⟩ := q
  simp only at hf hargs hgw hgr hcs ⊢
  subst hf
  refine ⟨cs, hm, hargs, fun g hg => by simpa using hgw g hg, fun hg => ?_, hcs⟩
  rw [hg] at hgr
  simpa using hgr

theorem req_sub {σ : Type} {cs cs' : List Cap} (h : capSub cs cs' = true) {s : State σ} {Γ : Gam}
    (hr : ReqOK cs' s Γ) : ReqOK cs s Γ := by
  intro c hc hga
  obtain ⟨c', hc', hg, ht, -⟩ := capSub_spec h hc
  obtain ⟨e, he, het, heb⟩ := hr c' hc' (by rw [hg]; exact hga)
  exact ⟨e, he, het.trans ht, by rw [← hg]; exact heb⟩

theorem winOpen_of {A : AEnv} {k n : Nat} {rg : Region} (h : A.T[k]? = some (some ⟨n, .win rg⟩)) :
    winOpen A = true := by
  unfold winOpen
  rw [List.any_eq_true]
  exact ⟨_, List.mem_of_getElem? h, rfl⟩

theorem set_mono {p p' : Ptrs} (hm : p.Mono p') (rg : Region) (v : Nat) :
    (p.set rg v).Mono (p'.set rg v) := by
  unfold Ptrs.Mono at *
  cases rg <;> simp only [Ptrs.set] <;> omega

theorem live_mono' {p p' : Ptrs} (hm : p.Mono p') {rg : Region} {b n : Nat}
    (h : rg.Live p b n) : rg.Live p' b n := by
  unfold Ptrs.Mono at hm
  cases rg <;> simp only [Region.Live] at h ⊢ <;> omega

/-- An open window survives a call that does not grow `Γ`. -/
theorem winOK_after {a : Act σ} {Γ Γ' : Gam} {p p' : Ptrs} (hL' : Layout a.C p' Γ')
    (hord' : p'.Ordered) (hm : p.Mono p') (hnf : NewFresh Γ Γ' p p) {rg : Region}
    {q : BitVec 64} (h : WinOK a Γ p rg q) : WinOK a Γ' p' rg q := by
  obtain ⟨h8, hm0, hm1, hlive, hnf0⟩ := h
  have hms := set_mono hm rg q.toNat
  refine ⟨h8, mono_trans hm0 hms, ?_, fun o' ho' => ?_, ?_⟩
  · unfold Ptrs.Mono at *
    cases rg <;> simp only [Ptrs.set] at * <;> omega
  · -- the last byte of `o'` lies in an object of `Γ` with the same base and type
    have hpos := (hL'.1 o' ho').2.2.1
    have hl' := (hL'.1 o' ho').2.2.2.2
    have hse : scratchEnd < 2 ^ 64 := by decide
    have hbd : o'.base.toNat + o'.size ≤ scratchEnd := by
      unfold Ptrs.Ordered at hord'
      unfold Obj.lo at hl'
      generalize (a.C.ty o'.ty).region = r at hl'
      cases r <;> simp only [Region.Live] at hl' <;> unfold heapEnd scratchEnd at * <;> omega
    have hlast : (BitVec.ofNat 64 (o'.base.toNat + o'.size - 1)).toNat =
        o'.base.toNat + o'.size - 1 := by
      rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
    have hlo1 : o'.lo ≤ (BitVec.ofNat 64 (o'.base.toNat + o'.size - 1)).toNat := by
      rw [hlast]; unfold Obj.lo; omega
    have hhi1 : (BitVec.ofNat 64 (o'.base.toNat + o'.size - 1)).toNat < o'.hi := by
      rw [hlast]; unfold Obj.hi; omega
    rcases hnf o' ho' _ hlo1 hhi1 with ⟨o0, ho0, hb, ht, hlo, hhi⟩ | hf
    · rw [hlast] at hlo hhi
      have hl0 := hlive o0 ho0
      rw [ht] at hl0
      simp only [Obj.hi, Obj.lo] at hhi hl0 ⊢
      rw [hb] at hhi hl0
      apply live_mono' hms
      generalize (a.C.ty o'.ty).region = r at hl0 ⊢
      cases r <;> simp only [Region.Live] at hl0 ⊢ <;> omega
    · exfalso; unfold Fresh at hf; omega
  · intro o' ho' x hlo hhi
    rcases hnf o' ho' x hlo hhi with ⟨o1, ho1, hb1, ht1, hlo1, hhi1⟩ | hf
    · rcases hnf0 o1 ho1 x hlo1 hhi1 with ⟨o0, ho0, hb0, ht0, hlo0, hhi0⟩ | hf0
      · exact Or.inl ⟨o0, ho0, hb0.trans hb1, ht0.trans ht1, hlo0, hhi0⟩
      · exact Or.inr (fresh_of_mono hms hf0)
    · exfalso; unfold Fresh at hf; omega

theorem G_congr {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {Γ : Gam} {s t : State σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs)
    (hb : t.be = s.be) (h : G C H Γ s) : G C H Γ t := by
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := h
  have hpt : ptrsOf t = ptrsOf s := by unfold ptrsOf gword; rw [hg]
  refine ⟨p, hpt ▸ hp, hord, hL, hm ▸ hF, hm ▸ hT, fun g k hk => ?_, fun o ho => ?_⟩
  · obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, by unfold gword; rw [hg]; exact hv, hf⟩
  · exact (hH.2 Γ s t o (hW o ho) hd hb (fun x _ => by rw [hm]) (fun g _ => by rw [hg])).1

/-- The relation of a capability summary (`CSumm` unfolded). -/
def SummR (C : Cfg) (H : Hooks σ) (sg : Sig) (cs : List Cap) (vs : List (ValueHOL 64))
    (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  Good (some r) → ¬ Abortive r → ∀ Γ, G C H Γ s →
    (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) →
    ReqOK cs s Γ → ∃ Γ' p p', SumCore C H sg (fun x => ProtCell C Γ x ∧ CapPW cs s Γ x) Γ s vs
      r t Γ' p p' ∧ True

theorem summ_funSpec {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig} {cs : List Cap}
    (h : CSumm σ X C H f sg cs) : FunSpec σ X f (SummR C H sg cs) := h

/-- **A checked call.** Every good run of the callee from the call entry gives the caller's
heap part after it, the temporaries, and the result fitting the callee's signature. -/
theorem call_core {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hsg : E.sg = a.sg) {A : AEnv} {Γ : Gam} {p : Ptrs} {Θ : List (BitVec 64 × Nat)}
    {s : State σ} (hh : Heap a Γ p s) (ht : TempsOK a A Γ p Θ) (hl : LocalsOK A Γ Θ s)
    (hs : InCtx s X) {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg)
    {vs : List (ValueHOL 64)} (hvs : evs s args = some vs) {cs : List Cap}
    (hcs : capSub cs E.caps = true) (hcE : E.caps = a.caps)
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    (hR : SummR a.Cb a.H sg cs vs (callEntryStateHOLFinite s callee) r st)
    (hgood : Good (some r)) (hna : ¬ Abortive r) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ TempsOK a A Γ' q' Θ ∧ p.Mono q' ∧
      ∀ v, r = .returned v → RetOK Γ' p q' vs sg.ret v := by
  obtain ⟨-, -, hargsc, hgw, hgr, -⟩ := findSig_spec hfs
  obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) args vs hvs
  obtain ⟨hargs, hfoot⟩ := argsChk_sound ha hE hh ht hargsc hlen hvok
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hargs' : ArgsOK a.Cb Γ p sg.params vs := by rw [ha.hupg] at hargs; exact hargs
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  have hcs' : capSub cs a.caps = true := hcE ▸ hcs
  have hreq0 := req_now ha hh
  have hreq : ReqOK a.caps (callEntryStateHOLFinite s callee) Γ := hreq0
  obtain ⟨Γ', q, q', core, -⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs'⟩ (req_sub hcs' hreq)
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core hfoot (fun g hg => hsg ▸ hgw g hg)
    (fun h => hsg ▸ (hgr h).1) hcs'
  obtain ⟨-, -, hmono, hext, hnf, -, -, -, hng, hret⟩ := core
  obtain ⟨p1, hp1, hord1, -⟩ := hh.1
  have e1 : p1 = q := by rw [hh.2.1] at hp1; exact (Option.some.inj hp1).symm
  rw [e1] at hord1
  obtain ⟨p2, hp2, hord2, -⟩ := hh'.1
  have e2 : p2 = q' := by rw [hh'.2.1] at hp2; exact (Option.some.inj hp2).symm
  rw [e2] at hord2
  refine ⟨Γ', q', hext, hh', ⟨ht.1, fun k td hk => ?_⟩, hmono, hret⟩
  obtain ⟨w, hw, hbuf, hprov⟩ := ht.2 k td hk
  refine ⟨w, hw, bufOK_ext hord1 hord2 hmono hext hnf hbuf, ?_⟩
  obtain ⟨n, kd⟩ := td
  cases kd with
  | fresh => exact hprov
  | arg i => exact hprov
  | win rg =>
      have hgf : sg.grows = false := by
        cases h : sg.grows
        · rfl
        · have := (hgr h).2; rw [winOpen_of hk] at this; cases this
      obtain ⟨p3, hp3, -, hL3, -⟩ := hh'.1
      have e3 : p3 = q' := by rw [hh'.2.1] at hp3; exact (Option.some.inj hp3).symm
      rw [e3] at hL3
      exact ⟨hprov.1, winOK_after hL3 hord2 hmono (hng hgf) hprov.2⟩

theorem ig_after {a : Act σ} (hH : HooksLawful a.C a.H) {A : AEnv} {Γ Γ' : Gam} {q' : Ptrs}
    {Θ : List (BitVec 64 × Nat)} {s st : State σ} (hl : LocalsOK A Γ Θ s) (hext : Ext Γ Γ')
    (hh' : Heap a Γ' q' st) (ht' : TempsOK a A Γ' q' Θ) :
    IG a A Γ' Θ { st with locals := s.locals } :=
  ⟨q', heap_congr (s := st) hH rfl rfl rfl rfl hh', ht', locals_ext hext hl⟩

/-- `f(args);` -/
theorem callD_post {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) {A : AEnv}
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg) (rt : List RT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.call (some (none, none)) f args) (SPost a rt (.normal A) Γ Θ) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
  have hf := summ_funSpec (hT f sg cs hmem)
  refine hoareG_callD hf ?_ ?_
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR _
    obtain ⟨Γ', q', hext, hh', ht', -⟩ := call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR
      (by simp [Good]) (by simp [Abortive])
    exact ⟨A, Γ', Θ, rfl, ⟨hext, List.prefix_refl _⟩, ig_after ha.hH hl hext hh' ht'⟩
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR _ habn
    have hg : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    by_cases hab : Abortive r
    · rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
      · exact Or.inl hab
      · exact Or.inl hab
    obtain ⟨Γ', q', hext, hh', -, -⟩ := call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR hg hab
    have hH' := heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
    · exact Or.inr ⟨Γ', q', hext, hH'⟩
    · exact Or.inr ⟨Γ', q', hext, hH'⟩

end InitECandidate.Solver.MemSafe
