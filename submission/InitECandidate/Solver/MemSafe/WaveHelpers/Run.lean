import InitECandidate.Solver.MemSafe.Builtin
import InitECandidate.Solver.MemSafe.CallSound2

set_option autoImplicit false

/-!
# Hand proofs in the checker's activation invariant

A hand-proved body can be run against the checker's own invariant `Heap a Γ p s` (the running
`SumCore` from the entry, `AEnv.lean`), with callees given by their capability summaries:

* `csumm_of_heap`: a body that ends (for every good non-abortive result) in `Heap` of the entry
  activation `actOf C H sg [] vs s0 Γ0 p0` gives `CSumm σ X C H f sg []`;
* `heap_call`: a call to a callee with `CSumm … sg' []` keeps `Heap` (for every good
  non-abortive result of the callee), when the callee's buffer cells are in the caller's
  footprint;
* `heap_store_out`: a store to a cell outside `Γ` that was unallocated at the entry keeps `Heap`.
-/

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

theorem capsOK_nil (C : Cfg) (sg : Sig) : capsOK C sg [] = true := rfl

theorem capSub_nil (cs : List Cap) : capSub [] cs = true := rfl

/-- **A capability summary from a body ending in the activation invariant.** -/
theorem csumm_of_heap {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        ActOK (actOf C H sg [] vs s0 Γ0 p0) X → Heap (actOf C H sg [] vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg [] vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v)) :
    CSumm σ X C H f sg [] := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hreq
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS (capsOK_nil C sg) hG hps hargs hreq
  have HH := h vs body callee rs hl s hs hloc Γ p1 ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hret⟩ := HH r rfl hna
  exact ⟨Γ', p1, p', act_exit (capsOK_nil C sg) hps hext hh' hret, trivial⟩

/-- **A call to a capability-summary callee keeps the activation invariant.** -/
theorem heap_call {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {sg' : Sig} {vs : List (ValueHOL 64)}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    (hR : SummR a.Cb a.H sg' [] vs (callEntryStateHOLFinite s callee) r st)
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs)
    (hfoot : ∀ x, ArgCells sg'.params vs x → a.Foot x) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ p.Mono q' ∧
      NewFresh Γ Γ' p q' ∧ ∀ v, r = .returned v → RetOK Γ' p q' vs sg'.ret v := by
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  obtain ⟨Γ', q, q', core, -⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs⟩ (fun c hc => by cases hc)
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core hfoot hgw hgr (capSub_nil _)
  obtain ⟨-, -, hmono, hext, hnf, -, -, -, -, hret⟩ := core
  exact ⟨Γ', q', hext, hh', hmono, hnf, hret⟩

/-- No buffer parameters: no argument cells. -/
theorem argCells_any {vs : List (ValueHOL 64)} {ps : List PT} (hps : ∀ pt ∈ ps, pt = .any)
    {x : BitVec 64} : ¬ ArgCells ps vs x := by
  rintro ⟨i, w, -, ⟨n, hn, -⟩ | ⟨j, c, d, y, hn, -, -⟩⟩
  · have := hps _ (List.mem_of_getElem? hn); cases this
  · have := hps _ (List.mem_of_getElem? hn); cases this

/-- Arguments for a signature without buffer or typed parameters. -/
theorem argsOK_any {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hps : ∀ pt ∈ ps, pt = .any) (hl : ps.length = vs.length) : ArgsOK C Γ p ps vs := by
  refine ⟨hl, fun i pt v hpt _ => ?_⟩
  rw [hps _ (List.mem_of_getElem? hpt)]
  trivial

/-- **A store to a cell outside `Γ`, unallocated at the entry, keeps the invariant.** -/
theorem heap_store_out {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {mem : Mem} {w : BitVec 64}
    (hmod : ModifiesOnly (fun x => x = w) s.memory mem)
    (hw : ¬ InObj Γ w.toNat) (hf : ¬ a.p0.Allocated w.toNat) :
    Heap a Γ p { s with memory := mem } := by
  obtain ⟨p1, -, hord, hL, -⟩ := hh.1
  refine heap_write ha hh hmod (fun x hx => Or.inl (hx ▸ hw)) ?_ ?_
  · intro o ho k hk hx
    exact absurd (hx ▸ cell_in hord hL ho hk) hw
  · intro x hx
    exact Or.inr (Or.inr (Or.inl (hx ▸ hf)))

/-- The allocator state of the invariant is ordered. -/
theorem heap_ord {a : Act σ} {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s) :
    p.Ordered := by
  obtain ⟨p1, hp1, hord, -⟩ := hh.1
  rw [hh.2.1] at hp1
  cases hp1
  exact hord

/-! ## Calls and stores with a locals invariant -/

/-- The activation invariant for some `Γ` extending the entry typing. -/
def HHa (a : Act σ) (t : State σ) : Prop := ∃ Γ p, Ext a.Γ0 Γ ∧ Heap a Γ p t

/-- Every good non-abortive result keeps the activation invariant. -/
def HQa (a : Act σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r', r = some r' → ¬ Abortive r' → HHa a t

theorem hha_congr {a : Act σ} (hH : HooksLawful a.C a.H) {s t : State σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs)
    (hb : t.be = s.be) (h : HHa a s) : HHa a t := by
  obtain ⟨Γ, p, he, hh⟩ := h
  exact ⟨Γ, p, he, heap_congr hH hm hg hd hb hh⟩

theorem hqa_of_hha {a : Act σ} {t : State σ} (h : HHa a t) (r : Option (PanSemResultExact 64)) :
    HQa a r t := fun _ _ _ => h

/-- `G` of the base configuration from the invariant. -/
theorem heap_G {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) : G a.Cb a.H Γ s := by
  have := hh.1
  rw [ha.hupg] at this
  exact G_of_upg ha.hcaps this

/-- A `scalar` cell of the current `Γ` is in the footprint. -/
theorem foot_of_scell {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {x : BitVec 64} (hx : SCell a.Cb Γ x) : a.Foot x := by
  obtain ⟨o, ho, k, hk, hsc, rfl⟩ := hx
  refine foot_of_wcell hh ha.hord0 ha.hsz0 ⟨o, ho, k, hk, ?_, rfl⟩
  rw [ha.hupg]
  show (a.Cb.ty o.ty).slot k ≠ .prot
  rw [hsc]
  decide

/-- **Eon.** A `bnd` cell of an object of `Γ` (`EV_OUTPUT_N`, `MSG_DATA_N`). -/
def BCell (C : Cfg) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ (C.ty o.ty).slot k = .bnd ∧ a = o.cell k

/-- A `bnd` cell of the current `Γ` is in the footprint. -/
theorem foot_of_bcell {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {x : BitVec 64} (hx : BCell a.Cb Γ x) : a.Foot x := by
  obtain ⟨o, ho, k, hk, hsc, rfl⟩ := hx
  refine foot_of_wcell hh ha.hord0 ha.hsz0 ⟨o, ho, k, hk, ?_, rfl⟩
  rw [ha.hupg]
  show (a.Cb.ty o.ty).slot k ≠ .prot
  rw [hsc]
  decide

theorem abn_good' {r : PanSemResultExact 64} (h : Abn r) : Good (some r) := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]

/-- **`f(args);` for a capability-summary callee**, keeping a locals invariant. -/
theorem hoareG_callH {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} (hf : CSumm σ X a.Cb a.H f sg' []) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ ∀ x, ArgCells sg'.params vs x → a.Foot x) :
    HoareG σ X (fun s => L s.locals ∧ HHa a s) (.call (some (none, none)) f args)
      (fun r t => (r = none → L t.locals ∧ HHa a t) ∧ (r ≠ none → HQa a r t)) := by
  refine hoareG_callD (summ_funSpec hf) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee v st hR _
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (by simp [Good]) (by simp [Abortive]) hA hF
      hgw hgr
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩,
      fun h => absurd rfl h⟩
  · intro s hs ⟨hL, Γ, p, he, hh⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun _ r' hr' hna => ?_⟩
    cases hr'
    obtain ⟨hA, hF⟩ := hargs s hs hL Γ p he hh vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good' habn) hna hA hF hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- A store whose changed cells are `scalar` cells of the current `Γ` keeps the invariant. -/
theorem heap_store_scell {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {mem : Mem} {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R s.memory mem) (hR : ∀ x, R x → SCell a.Cb Γ x) :
    Heap a Γ p { s with memory := mem } := by
  refine heap_write ha hh hmod (fun x hx => ?_) (fun o ho k hk hx => ?_)
    (fun x hx => foot_of_scell ha hh (hR x hx))
  · obtain ⟨o, ho, k, hk, hsc, he⟩ := hR x hx
    refine Or.inr ⟨o, ho, k, hk, ?_, he⟩
    rw [ha.hupg]
    show (a.Cb.ty o.ty).slot k ≠ .prot
    rw [hsc]
    decide
  · obtain ⟨p1, -, hord, hL, -⟩ := hh.1
    obtain ⟨o', ho', k', hk', hsc, he⟩ := hR _ hx
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
    rw [ha.hupg]
    show Fits Γ ((a.Cb.ty o.ty).slot k) _
    rw [hsc]
    trivial

/-- **Eon.** A store whose changed cells are `bnd` cells of the current `Γ`, receiving words
below `2^32`, keeps the invariant. -/
theorem heap_store_bcell {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {mem : Mem} {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R s.memory mem) (hR : ∀ x, R x → BCell a.Cb Γ x)
    (hv : ∀ x, R x → (rd mem x).toNat < 2 ^ 32) :
    Heap a Γ p { s with memory := mem } := by
  refine heap_write ha hh hmod (fun x hx => ?_) (fun o ho k hk hx => ?_)
    (fun x hx => foot_of_bcell ha hh (hR x hx))
  · obtain ⟨o, ho, k, hk, hsc, he⟩ := hR x hx
    refine Or.inr ⟨o, ho, k, hk, ?_, he⟩
    rw [ha.hupg]
    show (a.Cb.ty o.ty).slot k ≠ .prot
    rw [hsc]
    decide
  · obtain ⟨p1, -, hord, hL, -⟩ := hh.1
    obtain ⟨o', ho', k', hk', hsc, he⟩ := hR _ hx
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
    rw [ha.hupg]
    show Fits Γ ((a.Cb.ty o.ty).slot k) _
    rw [hsc]
    exact hv _ hx

/-- An entry buffer argument stays a buffer at a later state. -/
theorem bufOK_later {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) (he : Ext a.Γ0 Γ) {b n : Nat} (hb : BufOK a.Cb a.Γ0 a.p0 b n) :
    BufOK a.Cb Γ p b n := by
  have hord := heap_ord hh
  exact bufOK_ext ha.hord0 hord hh.2.2.1 he hh.2.2.2.2.1 hb

end InitECandidate.Solver.MemSafe.WaveHelpers
