import InitECandidate.Solver.MemSafe.Struct.Swap
import InitECandidate.Solver.MemSafe.Struct.FmemAlloc
import InitECandidate.Solver.MemSafe.Struct.HelperGw

/-!
# EVM memory: `extend_memory`

`sum_extend_memory`: the summary of `extend_memory(X)` (`guest/src/evm.pnk`) under the
precondition `EMPre`: `X % 32 = 0`, `MEM_LEN + X ≤ 2^40`, and **memory contiguity** — the
running frame's memory ends at `frame_mem_ptr` (`EV_MEM + EV_MEM_CAP = frame_mem_ptr`, §2.4
hazard 2). It writes `EV_MEM_LEN` and `EV_MEM_CAP` (`PWev T [4, 5]`), zeroes memory, and when
the capacity is exceeded grows the memory object in place into fresh frame memory.
`EMQ`: `EV_MEM` unchanged; a return sets `MEM_LEN' = MEM_LEN + X` and keeps contiguity.

Hypotheses: `AllocSpec` of `frame_mem_alloc`, the plain summary of `memzero`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} {T : STy}

def sgEM : Sig := ⟨[.any], [], [], true⟩

/-- `memzero(dst, n)`: `n` writable bytes at `dst`. -/
def sgMemzero (gr : Bool) : Sig := ⟨[.bufArg 1 1 0, .any], [], [], gr⟩

/-- The precondition of `extend_memory(X)`. -/
def EMPre (T : STy) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ X : BitVec 64, vs = [.val (.word X)] ∧ X.toNat % 32 = 0 ∧ ∀ e, EvObj T Γ s e →
    (fLEN s.memory e).toNat + X.toNat ≤ 2 ^ 40 ∧
    ∀ p, ptrsOf s = some p → (fMEM s.memory e).toNat + (fMCAP s.memory e).toNat = p.fp

/-- What `extend_memory(X)` does. -/
def EMQ (T : STy) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (_ : Gam) : Prop :=
  ∀ e X, EvObj T Γ s e → vs = [.val (.word X)] → fMEM t.memory e = fMEM s.memory e ∧
    ((∃ v, r = .returned v) → (fLEN t.memory e).toNat = (fLEN s.memory e).toNat + X.toNat ∧
      ∀ p, ptrsOf t = some p → (fMEM t.memory e).toNat + (fMCAP t.memory e).toNat = p.fp)

/-! ## Support -/

theorem ptrs_fp {s : State σ} {p : Ptrs} (hp : ptrsOf s = some p) {f : BitVec 64}
    (hf : s.globals.lookup gFrame = some (.val (.word f))) : p.fp = f.toNat := by
  unfold ptrsOf at hp
  have : gword s gFrame = some f := by unfold gword; rw [hf]
  rw [this] at hp
  split at hp
  · rename_i h1 h2 h3 h4 h5 h6
    cases h5
    simp only [Option.some.injEq] at hp
    rw [← hp]
  · rename_i hn
    cases hfm : gword s gHeap <;> cases hsm : gword s gScratch <;> simp_all

/-- The frame memory object of the running frame: it ends exactly at `frame_mem_ptr`. -/
theorem memObj_end {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ) (hE : EvCfg C T)
    {mo : Obj} (hmo : mo ∈ Γ) (hmot : mo.ty = T.mem) {MEM MCAP : BitVec 64}
    (hb : mo.base = MEM) (hsz : MCAP.toNat ≤ mo.size) (hc : MEM.toNat + MCAP.toNat = p.fp) :
    mo.size = MCAP.toNat ∧ mo.hi = p.fp := by
  have h := (obj_bounds hord hL hmo).2.2.2.1 (by rw [hmot]; exact hE.mem_region)
  unfold Obj.hi Obj.lo at *
  rw [hb] at h ⊢
  omega

/-! ## The run -/

def emPW (C : Cfg) (T : STy) (X0 : BitVec 64) (s0 : State σ) (Γ0 : Gam) (a : BitVec 64) : Prop :=
  ProtCell C Γ0 a ∧ PWev T [4, 5] [.val (.word X0)] s0 Γ0 a

abbrev emF (C : Cfg) (H : Hooks σ) (T : STy) (X0 : BitVec 64) (s0 : State σ) (Γ0 : Gam) :=
  Fin C H sgEM (emPW C T X0 s0 Γ0) Γ0 s0 [.val (.word X0)] (EMQ T)

/-- The state before the tail (after the capacity check or growth). -/
def EMMid (C : Cfg) (H : Hooks σ) (T : STy) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e : Obj)
    (X0 LEN NLEN MEM : BitVec 64) (t : State σ) : Prop :=
  t.locals.lookup (nm "len") = some (.val (.word LEN)) ∧
    t.locals.lookup (nm "nlen") = some (.val (.word NLEN)) ∧
    t.locals.lookup (nm "expand_by") = some (.val (.word X0)) ∧
    t.globals.lookup gEv = some (.val (.word e.base)) ∧
    ∃ Γ1 e1 mo1 p1, Trk C H Γ0 s0 p0 (emPW C T X0 s0 Γ0) Γ1 t ∧ ptrsOf t = some p1 ∧ e1 ∈ Γ1 ∧
      e1.base = e.base ∧ e1.ty = T.ev ∧ EvSM T Γ1 t.memory e1 ∧ mo1 ∈ Γ1 ∧ mo1.base = MEM ∧
      mo1.ty = T.mem ∧ NLEN.toNat ≤ (fMCAP t.memory e).toNat ∧ (fMCAP t.memory e).toNat ≤ mo1.size ∧
      MEM.toNat + (fMCAP t.memory e).toNat = p1.fp ∧
      ∀ k ∈ [1, 2, 3, 4, 29], rd t.memory (e.cell k) = rd s0.memory (e.cell k)

theorem argsOK_memzero {Γ : Gam} {p : Ptrs} {gr : Bool} {d n : BitVec 64}
    (h : BufOK C Γ p d.toNat (1 * n.toNat + 0)) :
    ArgsOK C Γ p (sgMemzero gr).params [.val (.word d), .val (.word n)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i <;> simp [sgMemzero] at hpt hv <;> subst hpt <;> subst hv
  · exact ⟨d, n, rfl, rfl, h⟩
  · trivial

theorem argCells_memzero {gr : Bool} {d n : BitVec 64} {a : BitVec 64}
    (h : ArgCells (sgMemzero gr).params [.val (.word d), .val (.word n)] a) :
    Overlap d.toNat (1 * n.toNat + 0) a := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨m, hm, -⟩ | ⟨j, c, d', z, hj, hz, ho⟩
  · rcases i with _ | _ | i <;> simp [sgMemzero] at hm
  · rcases i with _ | _ | i <;> simp [sgMemzero] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf] at hw hz
    subst hw; subst hz
    exact ho

/-- The relation of the `memzero` call: its summary, `frame_mem_ptr` and byte order kept. -/
def MzRel (C : Cfg) (H : Hooks σ) (gr : Bool) (vs : List (ValueHOL 64)) (s : State σ)
    (r : PanSemResultExact 64) (t : State σ) : Prop :=
  SumRel C H (sgMemzero gr) (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)
    vs s r t ∧ t.globals.lookup gFrame = s.globals.lookup gFrame ∧ t.be = s.be

theorem funSpec_mz (hC : X.code.lookup = guestCode) {gr : Bool}
    (hZ : Summ σ X C H (nm "memzero") (sgMemzero gr)) : FunSpec σ X (nm "memzero") (MzRel C H gr) :=
  FunSpec.and (R := SumRel C H (sgMemzero gr) (fun _ _ _ => True) (fun _ _ _ _ => False)
    (fun _ _ _ _ _ _ => True)) hZ (FunSpec.and (gw_memzero hC) (funSpec_be' _))

/-- A `memzero` call into a stack/memory buffer from a tracked state: the result is tracked,
`frame_mem_ptr` and every protected cell are kept. -/
theorem mz_call (hH : HooksLawful C H) (hE : EvCfg C T) {gr : Bool} {Γ0 Γ : Gam} {s0 t st : State σ}
    {p0 : Ptrs} {PW : BitVec 64 → Prop} (h : Trk C H Γ0 s0 p0 PW Γ t) (hord0 : p0.Ordered)
    (hL0 : Layout C p0 Γ0) {callee : HolFiniteMapExact MlS (ValueHOL 64)} {d n : BitVec 64}
    {r : PanSemResultExact 64} (hR : MzRel C H gr [.val (.word d), .val (.word n)]
      (callEntryStateHOLFinite t callee) r st) (hgood : Good (some r))
    (hst : st.memaddrs = t.memaddrs) {mo : Obj} (hmo : mo ∈ Γ) (hmot : mo.ty = T.mem)
    (hb : mo.lo ≤ d.toNat) (hn : d.toNat + n.toNat ≤ mo.hi) :
    ∃ Γ', Trk C H Γ0 s0 p0 PW Γ' st ∧ Ext Γ Γ' ∧
      st.globals.lookup gFrame = t.globals.lookup gFrame ∧
      (∀ g ∈ C.PG, st.globals.lookup g = t.globals.lookup g) ∧
      ∀ a, ProtCell C Γ a → st.memory a = t.memory a := by
  obtain ⟨hR, hfp, hbe⟩ := hR
  have hG := trk_G h
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  have hsc : ∀ a, Overlap d.toNat (1 * n.toNat + 0) a → SCell C Γ a :=
    fun a ha => overlap_scell hord hL hmo (by rw [hmot]; exact hE.mem_scalar) hb (by omega) ha
  obtain ⟨Γ', p, p', ht, hc, -⟩ := trk_callSum (Pre := fun _ _ _ => True)
    (PW' := fun _ _ _ _ => False) (Q := fun _ _ _ _ _ _ => True)
    (t' := callEntryStateHOLFinite t callee) hH h hord0 hL0 rfl rfl rfl rfl hR hgood
    (fun p hp => argsOK_memzero fun a ha => Or.inl (hsc a ha)) trivial
    (fun _ _ => by simp [sgMemzero]) (fun a ha => Or.inl (sCell_wCell (hsc a (argCells_memzero ha))))
    (fun _ _ h => h.elim) hst hbe
  refine ⟨Γ', ht, hc.2.2.2.1, hfp, fun g hg => hc.2.2.2.2.2.2.2.1 g hg (by simp [sgMemzero]),
    fun a ha => ?_⟩
  exact sumCore_prot (G_congr (s := t) hH rfl rfl rfl rfl (trk_G h)) hc
    (fun a ha => Or.inl (sCell_wCell (hsc a (argCells_memzero ha)))) ha id

theorem evSM_base {T : STy} {Γ : Gam} {m : Mem} {e e' : Obj} (h : e'.base = e.base)
    (hs : EvSM T Γ m e) : EvSM T Γ m e' := by
  unfold EvSM StkOK MemOK fSTK fSP fMEM fLEN fMCAP fCAP at *
  rw [cells_base h, cells_base h, cells_base h, cells_base h, cells_base h, cells_base h]
  exact hs

theorem ptrsOf_fp {t : State σ} {p : Ptrs} (h : ptrsOf t = some p) :
    ∃ f, gword t gFrame = some f ∧ p.fp = f.toNat := by
  unfold ptrsOf at h
  split at h
  · rename_i a b c ha hb hc
    simp only [Option.some.injEq] at h
    exact ⟨b, hb, by rw [← h]⟩
  · simp at h

theorem fp_eq {s t : State σ} {p q : Ptrs} (hp : ptrsOf t = some p) (hq : ptrsOf s = some q)
    (h : t.globals.lookup gFrame = s.globals.lookup gFrame) : q.fp = p.fp := by
  obtain ⟨f, hf, hpf⟩ := ptrsOf_fp hp
  obtain ⟨f', hf', hqf⟩ := ptrsOf_fp hq
  have e1 : gword t gFrame = gword s gFrame := by unfold gword; rw [h]
  rw [e1, hf'] at hf
  cases hf
  rw [hpf, hqf]

theorem sm5 {k : Nat} (hk : k ∈ [1, 2, 3, 4, 29]) : k ∈ smSlots := by
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
  simp only [smSlots, List.mem_cons, List.not_mem_nil, or_false]
  omega

theorem stkOK_transfer {T : STy} {Γ Γ' : Gam} {m m' : Mem} {e e' : Obj} (hx : Ext Γ Γ')
    (h1 : rd m' (e'.cell 1) = rd m (e.cell 1)) (h2 : rd m' (e'.cell 2) = rd m (e.cell 2))
    (h29 : rd m' (e'.cell 29) = rd m (e.cell 29)) (h : StkOK T Γ m e) : StkOK T Γ' m' e' := by
  obtain ⟨b1, b2, b3, o, ho, hb, ht, hs⟩ := h
  obtain ⟨o', ho', hb', ht', hs'⟩ := hx o ho
  unfold StkOK fSTK fSP fCAP at *
  rw [h1, h2, h29]
  exact ⟨b1, b2, b3, o', ho', hb'.trans hb, ht'.trans ht, le_trans hs hs'⟩

theorem trk_ptrs {C : Cfg} {H : Hooks σ} {Γ0 Γ : Gam} {s0 t : State σ} {p0 : Ptrs}
    {PW : BitVec 64 → Prop} (h : Trk C H Γ0 s0 p0 PW Γ t) :
    ∃ p, ptrsOf t = some p ∧ p.Ordered ∧ Layout C p Γ := by
  obtain ⟨_, _, _, _, _, hG, _⟩ := h
  obtain ⟨p, hp, ho, hL, _⟩ := hG
  exact ⟨p, hp, ho, hL⟩

/-- **The tail**: `memzero(MEM + len, X); st ev + 32, nlen; return 0`. -/
theorem emTail_run (hC : X.code.lookup = guestCode) (hH : HooksLawful C H) (hE : EvCfg C T)
    (hK : EvHook C H T) {gr : Bool} (hZ : Summ σ X C H (nm "memzero") (sgMemzero gr))
    {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e : Obj} {X0 LEN NLEN MEM : BitVec 64}
    (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0) (hp0 : ptrsOf s0 = some p0)
    (he0 : EvObj T Γ0 s0 e) (hLEN : fLEN s0.memory e = LEN) (hMEM : fMEM s0.memory e = MEM)
    (hNLEN : NLEN.toNat = LEN.toNat + X0.toNat) (hN32 : NLEN.toNat % 32 = 0)
    (hML : MEM.toNat + LEN.toNat + X0.toNat < 2 ^ 64) :
    HoareG σ X (EMMid C H T Γ0 s0 p0 e X0 LEN NLEN MEM) emTail (emF C H T X0 s0 Γ0) := by
  have huniq : ∀ e', EvObj T Γ0 s0 e' → e' = e := fun e' h' => evObj_unique hL0 h' he0
  have hPW4 : emPW C T X0 s0 Γ0 (e.cell 4) :=
    ⟨smCell_prot hE hL0 he0.1 he0.2.1 ⟨4, by decide, rfl⟩, e, he0, 4, by decide, rfl⟩
  -- `memzero(MEM + len, X)`
  refine hoareG_seq (R := fun r t => (r ≠ none → emF C H T X0 s0 Γ0 r t) ∧ (r = none →
      t.locals.lookup (nm "nlen") = some (.val (.word NLEN)) ∧
      t.globals.lookup gEv = some (.val (.word e.base)) ∧
      ∃ Γ2 e2 mo2 p2, Trk C H Γ0 s0 p0 (emPW C T X0 s0 Γ0) Γ2 t ∧ ptrsOf t = some p2 ∧ e2 ∈ Γ2 ∧
        e2.base = e.base ∧ e2.ty = T.ev ∧ EvSM T Γ2 t.memory e2 ∧ mo2 ∈ Γ2 ∧ mo2.base = MEM ∧
        mo2.ty = T.mem ∧ NLEN.toNat ≤ (fMCAP t.memory e).toNat ∧
        (fMCAP t.memory e).toNat ≤ mo2.size ∧ MEM.toNat + (fMCAP t.memory e).toNat = p2.fp ∧
        ∀ k ∈ [1, 2, 3, 4, 29], rd t.memory (e.cell k) = rd s0.memory (e.cell k)))
    ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · have key : ∀ (u : State σ), InCtx u X → EMMid C H T Γ0 s0 p0 e X0 LEN NLEN MEM u →
        ∀ vs, evs u [.op .add [evL 24, lv (nm "len")], lv (nm "expand_by")] = some vs →
        ∀ callee r (st : State σ), MzRel C H gr vs (callEntryStateHOLFinite u callee) r st →
        InCtx st X → Good (some r) →
        st.globals.lookup gEv = some (.val (.word e.base)) ∧
        ∃ Γ2 e2 mo2 p2, Trk C H Γ0 s0 p0 (emPW C T X0 s0 Γ0) Γ2 st ∧ ptrsOf st = some p2 ∧
          e2 ∈ Γ2 ∧ e2.base = e.base ∧ e2.ty = T.ev ∧ EvSM T Γ2 st.memory e2 ∧ mo2 ∈ Γ2 ∧
          mo2.base = MEM ∧ mo2.ty = T.mem ∧ NLEN.toNat ≤ (fMCAP st.memory e).toNat ∧
          (fMCAP st.memory e).toNat ≤ mo2.size ∧ MEM.toNat + (fMCAP st.memory e).toNat = p2.fp ∧
          ∀ k ∈ [1, 2, 3, 4, 29], rd st.memory (e.cell k) = rd s0.memory (e.cell k) := by
      intro u hu hm vs hvs callee r st hR hst hgood
      obtain ⟨hlen, hnlen, hx, hev, Γ1, e1, mo1, p1, ht, hp1, he1, hb1, ht1, hsm1, hmo1, hmob1,
        hmot1, hcap1, hsz1, hc1, hk1⟩ := hm
      obtain ⟨a0, vs1, rfl, ha0, hvs1⟩ := evs_cons_inv hvs
      obtain ⟨a1, vs2, rfl, ha1, hvs2⟩ := evs_cons_inv hvs1
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs2
      subst hvs2
      obtain ⟨w0, rfl⟩ := ev_op_word ha0
      obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv ha0
      obtain ⟨hy', -⟩ := ev_evL hev hy
      cases hy'
      rw [ev_lw' hlen] at hz; cases hz
      rw [ev_lw' hx] at ha1; cases ha1
      have hMEMu : rd u.memory (e.base + BitVec.ofNat 64 24) = MEM := by
        show rd u.memory (e.cell 3) = MEM
        rw [hk1 3 (by decide), ← hMEM]; rfl
      rw [hMEMu] at hR
      have hLu : (MEM + LEN).toNat = MEM.toNat + LEN.toNat := toNat_add_small (by omega)
      obtain ⟨Γ2, ht2, hx2, hfp2, hpg2, hprot2⟩ := mz_call hH hE ht hord0 hL0 hR hgood
        (hst.2.1.trans hu.2.1.symm) hmo1 hmot1 (by unfold Obj.lo; rw [hmob1, hLu]; omega)
        (by unfold Obj.hi; rw [hmob1, hLu]; unfold fMCAP at hcap1 hsz1; omega)
      obtain ⟨e2, he2, hb2, ht2', -⟩ := hx2 e1 he1
      obtain ⟨mo2, hmo2, hmob2, hmot2, hmos2⟩ := hx2 mo1 hmo1
      obtain ⟨q1, hq1, hord1, hL1⟩ := trk_ptrs ht
      obtain ⟨p2, hp2, -, -⟩ := trk_ptrs ht2
      have hpc : ∀ k ∈ smSlots, rd st.memory (e.cell k) = rd u.memory (e.cell k) := fun k hk => by
        rw [rd, hprot2 _ (by rw [← cells_base hb1]; exact smCell_prot hE hL1 he1 ht1 ⟨k, hk, rfl⟩),
          ← rd]
      refine ⟨by rw [hpg2 gEv hE.ev_pg]; exact hev, Γ2, e2, mo2, p2, ht2, hp2, he2, hb2.trans hb1,
        ht2'.trans ht1, ?_, hmo2, hmob2.trans hmob1, hmot2.trans hmot1, ?_, ?_, ?_, ?_⟩
      · refine evSM_base (hb2.trans hb1 |>.trans hb1.symm) (evSM_ext hx2 (evSM_congr ?_ hsm1))
        rintro a ⟨k, hk, rfl⟩
        rw [cells_base hb1]
        exact hprot2 _ (by rw [← cells_base hb1]; exact smCell_prot hE hL1 he1 ht1 ⟨k, hk, rfl⟩)
      · unfold fMCAP at hcap1 ⊢; rw [hpc 5 (by decide)]; exact hcap1
      · unfold fMCAP at hsz1 ⊢; rw [hpc 5 (by decide)]; omega
      · unfold fMCAP at hc1 ⊢
        rw [hpc 5 (by decide), hc1]
        exact fp_eq hp2 hp1 hfp2
      · intro k hk
        rw [hpc k (sm5 hk), hk1 k hk]
    refine hoareG_callD (funSpec_mz hC hZ) ?_ ?_
    · intro u hu hm vs hvs callee v st hR hst
      obtain ⟨hev2, Γ2, e2, mo2, p2, ht2, hp2, rest⟩ := key u hu hm vs hvs callee _ st hR hst (by simp)
      refine ⟨fun h => absurd rfl h, fun _ => ⟨?_, hev2, Γ2, e2, mo2, p2,
        trk_congr hH ht2 rfl rfl rfl rfl, by rw [← hp2]; exact ptrsOf_congr rfl, rest⟩⟩
      exact hm.2.1
    · intro u hu hm vs hvs callee r st hR hst habn
      obtain ⟨-, Γ2, -, -, -, ht2, -, -, -, -, -, -, -, -, -, -, -, hk2⟩ :=
        key u hu hm vs hvs callee r st hR hst (abn_good habn)
      refine ⟨fun _ => fin_of_trk hH (trk_congr hH ht2 rfl rfl rfl rfl) hp0 (fun h => by cases h)
        (fun _ _ v hv => absurd hv (abn_ne_ret habn v)) fun t' h1 _ e' X' he' hX' => ?_,
        fun h => by cases h⟩
      rw [huniq e' he']
      refine ⟨?_, fun ⟨v, hv⟩ => absurd hv (abn_ne_ret habn v)⟩
      unfold fMEM; rw [h1]; exact hk2 3 (by decide)
  -- `st ev + 32, nlen; return 0`
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ Γ2 p2, Trk C H Γ0 s0 p0 (emPW C T X0 s0 Γ0) Γ2 t ∧
      ptrsOf t = some p2 ∧ (fLEN t.memory e).toNat = NLEN.toNat ∧
      MEM.toNat + (fMCAP t.memory e).toNat = p2.fp ∧ rd t.memory (e.cell 3) = rd s0.memory (e.cell 3))
    ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_store fun u _ hRu w v mem hw hv hmem => ?_
    obtain ⟨hn, hev, Γ2, e2, mo2, p2, ht2, hp2, he2, hb2, ht2', hsm2, hmo2,
      hmob2, hmot2, hcap2, hsz2, hc2, hk2⟩ := hRu.2 rfl
    rw [ev_evA hev] at hw; cases hw
    rw [ev_lw' hn] at hv; cases hv
    have hmem' := store_word hmem
    subst hmem'
    have c4 : e.base + BitVec.ofNat 64 32 = e2.cell 4 := (cells_base hb2 4).symm
    rw [c4]
    have hrd : ∀ k ∈ smSlots, k ≠ 4 →
        rd (upd u.memory (e2.cell 4) NLEN) (e2.cell k) = rd u.memory (e2.cell k) :=
      fun k hk hk4 => rd_upd_ne (cell_ne e2 (sm_mem hk) (by decide) hk4)
    have hsm' : EvSM T Γ2 (upd u.memory (e2.cell 4) NLEN) e2 := by
      obtain ⟨hstk, ⟨b1, b2, b3, b4⟩⟩ := hsm2
      have e1 := hrd 1 (by decide) (by decide)
      have e2' := hrd 2 (by decide) (by decide)
      have e3 := hrd 3 (by decide) (by decide)
      have e5 := hrd 5 (by decide) (by decide)
      have e29 := hrd 29 (by decide) (by decide)
      unfold fMCAP at hcap2
      rw [← cells_base hb2] at hcap2
      unfold EvSM StkOK MemOK fSTK fSP fMEM fLEN fMCAP fCAP at *
      rw [e1, e2', e3, e5, e29, rd_upd_self]
      exact ⟨hstk, ⟨hcap2, hN32, b3, b4⟩⟩
    refine ⟨rfl, Γ2, p2, ?_, by rw [← hp2]; rfl, ?_, ?_, ?_⟩
    · refine trk_sm (ks := [4]) hH hE hK ht2 hord0 hL0 he2 ht2' rfl rfl rfl ?_ ?_ hsm'
      · intro a ha
        exact upd_ne fun h => ha (Or.inl ⟨4, by decide, by decide, h⟩)
      · intro k hk
        simp only [List.mem_singleton] at hk
        subst hk
        rw [cells_base hb2]; exact hPW4
    · unfold fLEN; rw [← cells_base hb2, rd_upd_self]
    · unfold fMCAP at hc2 ⊢
      rw [← cells_base hb2, hrd 5 (by decide) (by decide), cells_base hb2]; exact hc2
    · rw [← cells_base hb2, hrd 3 (by decide) (by decide), cells_base hb2]; exact hk2 3 (by decide)
  · refine hoareG_return fun u _ ⟨_, Γ2, p2, ht2, hp2, hl2, hc2, h3⟩ v hv => ?_
    rw [ev_cw] at hv; cases hv
    refine fin_of_trk hH (trk_congr hH ht2 rfl rfl rfl rfl) hp0 (fun h => by cases h)
      (fun _ _ _ _ => retOK_nil _) fun t' h1 h2 e' X' he' hX' => ?_
    rw [huniq e' he']
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hX'
    subst hX'
    have hmemeq : fMEM t'.memory e = MEM := by
      unfold fMEM; rw [h1]; show rd u.memory (e.cell 3) = MEM; rw [h3, ← hMEM]; rfl
    refine ⟨by rw [hmemeq, hMEM], fun _ => ⟨?_, fun p hp => ?_⟩⟩
    · rw [hLEN, ← hNLEN]; unfold fLEN at hl2 ⊢; rw [h1]; exact hl2
    · rw [hmemeq]
      have hpp : p = p2 := by
        have : some p = some p2 := by
          rw [← hp, ptrsOf_congr h2]; exact (ptrsOf_congr rfl).trans hp2
        exact Option.some.inj this
      subst hpp
      unfold fMCAP at hc2 ⊢; rw [h1]; exact hc2

/-! ## The growth branch -/

/-- The relation of an `AllocSpec`. -/
def AllocRel (rg : Region) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  Good (some r) → ∀ n p, vs = [.val (.word n)] → ptrsOf s = some p → p.Ordered →
    t.memory = s.memory ∧ (∀ g, g ≠ rg.global → t.globals.lookup g = s.globals.lookup g) ∧
    ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
      ∀ v, r = .returned v → ∃ q, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
        rg.Live p' q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat → ¬ p.Allocated a

theorem funSpec_fma (hC : X.code.lookup = guestCode)
    (hFA : AllocSpec σ X (nm "frame_mem_alloc") .fmem) :
    FunSpec σ X (nm "frame_mem_alloc") (fun vs s r t => AllocRel .fmem vs s r t ∧
      (∀ v, r = .returned v → FmemRet vs s v t) ∧ t.be = s.be) :=
  FunSpec.and (R := AllocRel .fmem) hFA (FunSpec.and (funSpec_frame_mem_alloc hC) (funSpec_be' _))

theorem toNat_mask_add {F N : BitVec 64} (hF : F.toNat < 2 ^ 32) (hN : N.toNat < 2 ^ 42)
    (hF8 : F.toNat % 8 = 0) (hN8 : N.toNat % 8 = 0) :
    (F + (N + BitVec.ofNat 64 7)).toNat / 8 * 8 = F.toNat + N.toNat := by
  have : (F + (N + BitVec.ofNat 64 7)).toNat = F.toNat + N.toNat + 7 := by
    simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
    omega
  rw [this]
  omega

/-- `frame_mem_alloc(ncap - cap); memzero(MEM + cap, ncap - cap); st ev + 40, ncap`, for a
new capacity `NC`. -/
theorem emGrowRest_run (hC : X.code.lookup = guestCode) (hH : HooksLawful C H)
    (hM : HooksMono C H) (hE : EvCfg C T) (hK : EvHook C H T) {gr : Bool}
    (hFA : AllocSpec σ X (nm "frame_mem_alloc") .fmem)
    (hZ : Summ σ X C H (nm "memzero") (sgMemzero gr)) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {e : Obj} {X0 LEN NLEN MEM MCAP NC : BitVec 64} (hs0 : InCtx s0 X) (hG0 : G C H Γ0 s0)
    (hp0 : ptrsOf s0 = some p0) (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0)
    (he0 : EvObj T Γ0 s0 e) (hsm0 : EvSM T Γ0 s0.memory e) (hLEN : fLEN s0.memory e = LEN)
    (hMEM : fMEM s0.memory e = MEM) (hMCAP : fMCAP s0.memory e = MCAP)
    (hcont : MEM.toNat + MCAP.toNat = p0.fp) (hNC1 : MCAP.toNat < NC.toNat)
    (hNC2 : NLEN.toNat ≤ NC.toNat) (hNC8 : NC.toNat % 8 = 0) (hNC3 : NC.toNat ≤ 2 ^ 41) :
    HoareG σ X (fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.be = s0.be ∧
        t.locals.lookup (nm "len") = some (.val (.word LEN)) ∧
        t.locals.lookup (nm "cap") = some (.val (.word MCAP)) ∧
        t.locals.lookup (nm "nlen") = some (.val (.word NLEN)) ∧
        t.locals.lookup (nm "expand_by") = some (.val (.word X0)) ∧
        t.locals.lookup (nm "ncap") = some (.val (.word NC)))
      (.seq (callD (nm "frame_mem_alloc") [.op .sub [lv (nm "ncap"), lv (nm "cap")]])
        (.seq (callD (nm "memzero") [.op .add [evL 24, lv (nm "cap")],
            .op .sub [lv (nm "ncap"), lv (nm "cap")]])
          (.store (evA 40) (lv (nm "ncap")))))
      (fun r t => (r ≠ none → emF C H T X0 s0 Γ0 r t) ∧
        (r = none → EMMid C H T Γ0 s0 p0 e X0 LEN NLEN MEM t)) := by
  have hA := hE.allocG
  have huniq : ∀ e', EvObj T Γ0 s0 e' → e' = e := fun e' h' => evObj_unique hL0 h' he0
  have hT0 : ∀ t : State σ, InCtx t X → t.memory = s0.memory → t.globals = s0.globals →
      t.be = s0.be → Trk C H Γ0 s0 p0 (emPW C T X0 s0 Γ0) Γ0 t :=
    fun t ht hm hg hb => trk_congr hH (trk_refl hG0 hp0) hm hg (ht.2.1.trans hs0.2.1.symm) hb
  obtain ⟨hstk0, ⟨m1, m2, m3, mo, hmo, hmob, hmot, hmosz⟩⟩ := hsm0
  rw [hMEM] at hmob
  rw [hMCAP] at hmosz m3 m1
  have hend := memObj_end hord0 hL0 hE hmo hmot hmob hmosz hcont
  obtain ⟨i, hi, hgi⟩ := List.mem_iff_getElem.mp hmo
  have hMCb : MCAP.toNat < 2 ^ 32 := by
    have := hord0.2.2.2.2.1; unfold scratchEnd at this; obtain ⟨-, -, -, h4, -⟩ := hord0
    unfold scratchEnd at *; omega
  have hNsub : (NC - MCAP).toNat = NC.toNat - MCAP.toNat := by
    rw [BitVec.toNat_sub]; have := NC.isLt; omega
  have hPW5 : emPW C T X0 s0 Γ0 (e.cell 5) :=
    ⟨smCell_prot hE hL0 he0.1 he0.2.1 ⟨5, by decide, rfl⟩, e, he0, 5, by decide, rfl⟩
  -- the fresh-space growth
  set mo' : Obj := ⟨mo.base, mo.ty, NC.toNat⟩ with hmo'
  have hmo8 := (hL0.1 mo hmo).1
  have hmolo := (obj_bounds hord0 hL0 hmo).2.2.2.1 (by rw [hmot]; exact hE.mem_region)
  have hmomin := (hL0.1 mo hmo).2.2.2.1
  have hmob' : mo.base.toNat = MEM.toNat := by rw [hmob]
  refine hoareG_seq (R := fun r t => (r ≠ none → (emF C H T X0 s0 Γ0 r t)) ∧ (r = none →
      t.locals.lookup (nm "len") = some (.val (.word LEN)) ∧
      t.locals.lookup (nm "cap") = some (.val (.word MCAP)) ∧
      t.locals.lookup (nm "nlen") = some (.val (.word NLEN)) ∧
      t.locals.lookup (nm "expand_by") = some (.val (.word X0)) ∧
      t.locals.lookup (nm "ncap") = some (.val (.word NC)) ∧
      t.globals.lookup gEv = some (.val (.word e.base)) ∧ t.memory = s0.memory ∧
      ∃ p1, Trk C H Γ0 s0 p0 (emPW C T X0 s0 Γ0) (Γ0.set i mo') t ∧ ptrsOf t = some p1 ∧
        p1.fp = MEM.toNat + NC.toNat)) ?_
      (fun r t _ hr _ h => ⟨fun _ => h.1 hr, fun h' => absurd h' hr⟩) ?_
  · refine hoareG_callD (funSpec_fma hC hFA) ?_ ?_
    · intro u hu hP vs hvs callee v st ⟨hAR, hFR, hbe⟩ hst
      obtain ⟨hm, hg, hb, hlen, hcap, hnlen, hx, hnc⟩ := hP
      rw [evs_cons (ev_sub2 (ev_lw' hnc) (ev_lw' hcap)) evs_nil] at hvs
      cases hvs
      have hpu : ptrsOf (callEntryStateHOLFinite u callee) = some p0 := by
        rw [← hp0]; exact ptrsOf_congr hg
      obtain ⟨hmst, hgst, p1, hp1, hord1, hmono1, -⟩ := hAR (by simp) _ _ rfl hpu hord0
      obtain ⟨N', F0, S0, Q, hN', hF0, hS0, -, hQ, -, -, hNle, hQv, hQle⟩ := hFR _ rfl
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hN'
      subst hN'
      have hF0p : F0.toNat = p0.fp := (ptrs_fp hpu hF0).symm
      have hQp : p1.fp = Q.toNat := ptrs_fp hp1 hQ
      have hfp8 := hord0.2.2.2.2.2.2.1
      have hfpb := hord0.2.2.2.1
      have hQn : Q.toNat = p0.fp + (NC.toNat - MCAP.toNat) := by
        rw [hQv, toNat_mask_add (by rw [hF0p]; have := hord0.2.2.2.2.1; unfold scratchEnd at *; omega)
          (by rw [hNsub]; omega) (by rw [hF0p]; exact hfp8) (by rw [hNsub]; omega), hF0p, hNsub]
      have hgev : st.globals.lookup gEv = some (.val (.word e.base)) := by
        rw [hgst gEv (by decide)]; exact hg ▸ he0.2.2
      have ht := trk_grow (o' := mo') hH hM hA hi (hT0 u hu hm hg hb) rfl rfl hpu hmst hgst
        hp1 hord1 hmono1 (hst.2.1.trans hu.2.1.symm) hbe (by rw [hgi]) (by rw [hgi])
        (by rw [hgi]; show mo.size ≤ NC.toNat; omega)
        ⟨by show mo.base.toNat % 8 = 0; exact hmo8, hNC8, by show 0 < NC.toNat; omega,
          by show (C.ty mo.ty).minSz ≤ NC.toNat; omega,
          by show (C.ty mo.ty).region.Live p1 mo.base.toNat NC.toNat
             rw [hmot, hE.mem_region]
             refine ⟨?_, ?_⟩
             · unfold Obj.lo at hmolo; exact hmolo.1
             · rw [hQp, hQn]; omega⟩
        (fun a h1 h2 => by
          rw [hgi] at h1
          right; left
          rw [hend.2] at h1
          refine ⟨h1, ?_⟩
          rw [hQp, hQn]
          show a.toNat < p0.fp + (NC.toNat - MCAP.toNat)
          unfold Obj.hi at h2; simp only [hmo'] at h2; omega)
        (by show ∀ k, (C.ty mo.ty).slot k = .scalar; rw [hmot]; exact hE.mem_scalar)
        (by show C.tags.lookup mo.ty = none; rw [hmot]; exact hE.mem_tag)
        (fun Γ s o ho => hK.mem_wf Γ s o (ho.trans hmot))
      refine ⟨fun h => absurd rfl h, fun _ => ⟨hlen, hcap, hnlen, hx, hnc, hgev, hmst.trans hm, p1,
        trk_congr hH ht rfl rfl rfl rfl, (by rw [← hp1]; exact ptrsOf_congr rfl), ?_⟩⟩
      rw [hQp, hQn, ← hcont]; omega
    · intro u hu hP vs hvs callee r st ⟨hAR, _, hbe⟩ hst habn
      obtain ⟨hm, hg, hb, hlen, hcap, hnlen, hx, hnc⟩ := hP
      rw [evs_cons (ev_sub2 (ev_lw' hnc) (ev_lw' hcap)) evs_nil] at hvs
      cases hvs
      have hpu : ptrsOf (callEntryStateHOLFinite u callee) = some p0 := by
        rw [← hp0]; exact ptrsOf_congr hg
      obtain ⟨hmst, hgst, p1, hp1, hord1, hmono1, -⟩ := hAR (abn_good habn) _ _ rfl hpu hord0
      have ht := trk_alloc hH hA (hT0 u hu hm hg hb) rfl rfl hpu hmst hgst hp1 hord1 hmono1
        (hst.2.1.trans hu.2.1.symm) hbe
      refine ⟨fun _ => fin_of_trk hH (trk_congr hH ht rfl rfl rfl rfl) hp0 (fun h => by cases h)
        (fun _ _ v hv => absurd hv (abn_ne_ret habn v)) fun t' h1 _ e' X' he' _ => ?_,
        fun h => by cases h⟩
      rw [huniq e' he']
      refine ⟨by unfold fMEM; rw [h1]; show rd st.memory _ = _; rw [hmst]
                 exact congrArg (fun m => rd m (e.cell 3)) hm, fun ⟨v, hv⟩ =>
        absurd hv (abn_ne_ret habn v)⟩
  have hmoS : mo' ∈ Γ0.set i mo' :=
    List.mem_iff_getElem.mpr ⟨i, by simp [hi], by simp⟩
  have heS : e ∈ Γ0.set i mo' ∨ True := Or.inr trivial
  refine hoareG_seq (R := fun r t => (r ≠ none → (emF C H T X0 s0 Γ0 r t)) ∧ (r = none →
      t.locals.lookup (nm "len") = some (.val (.word LEN)) ∧
      t.locals.lookup (nm "nlen") = some (.val (.word NLEN)) ∧
      t.locals.lookup (nm "expand_by") = some (.val (.word X0)) ∧
      t.locals.lookup (nm "ncap") = some (.val (.word NC)) ∧
      t.globals.lookup gEv = some (.val (.word e.base)) ∧
      ∃ Γ2 p2, Trk C H Γ0 s0 p0 (emPW C T X0 s0 Γ0) Γ2 t ∧ Ext (Γ0.set i mo') Γ2 ∧
        ptrsOf t = some p2 ∧ p2.fp = MEM.toNat + NC.toNat ∧
        ∀ k ∈ smSlots, rd t.memory (e.cell k) = rd s0.memory (e.cell k)))
    ?_ (fun r t _ hr _ h => ⟨fun _ => h.1 hr, fun h' => absurd h' hr⟩) ?_
  · have key : ∀ (u : State σ), InCtx u X →
        u.globals.lookup gEv = some (.val (.word e.base)) → u.memory = s0.memory →
        u.locals.lookup (nm "cap") = some (.val (.word MCAP)) →
        u.locals.lookup (nm "ncap") = some (.val (.word NC)) →
        ∀ p1, Trk C H Γ0 s0 p0 (emPW C T X0 s0 Γ0) (Γ0.set i mo') u → ptrsOf u = some p1 →
        p1.fp = MEM.toNat + NC.toNat →
        ∀ vs, evs u [.op .add [evL 24, lv (nm "cap")], .op .sub [lv (nm "ncap"), lv (nm "cap")]] =
          some vs →
        ∀ callee r (st : State σ), MzRel C H gr vs (callEntryStateHOLFinite u callee) r st →
        InCtx st X → Good (some r) →
        st.globals.lookup gEv = some (.val (.word e.base)) ∧
        ∃ Γ2 p2, Trk C H Γ0 s0 p0 (emPW C T X0 s0 Γ0) Γ2 st ∧ Ext (Γ0.set i mo') Γ2 ∧
          ptrsOf st = some p2 ∧ p2.fp = MEM.toNat + NC.toNat ∧
          ∀ k ∈ smSlots, rd st.memory (e.cell k) = rd s0.memory (e.cell k) := by
      intro u hu hev hm hcap hnc p1 ht hp1 hfp1 vs hvs callee r st hR hst hgood
      obtain ⟨a0, vs1, rfl, ha0, hvs1⟩ := evs_cons_inv hvs
      obtain ⟨a1, vs2, rfl, ha1, hvs2⟩ := evs_cons_inv hvs1
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs2
      subst hvs2
      obtain ⟨w0, rfl⟩ := ev_op_word ha0
      obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv ha0
      obtain ⟨hy', -⟩ := ev_evL hev hy
      cases hy'
      rw [ev_lw' hcap] at hz; cases hz
      rw [ev_sub2 (ev_lw' hnc) (ev_lw' hcap)] at ha1; cases ha1
      have hMEMu : rd u.memory (e.base + BitVec.ofNat 64 24) = MEM := by
        rw [hm, ← hMEM]; rfl
      rw [hMEMu] at hR
      have hMb : MEM.toNat + MCAP.toNat < 2 ^ 64 := by
        obtain ⟨-, -, -, h4, h5, -⟩ := hord0; unfold scratchEnd at h5; omega
      have hLu : (MEM + MCAP).toNat = MEM.toNat + MCAP.toNat := toNat_add_small hMb
      obtain ⟨Γ2, ht2, hx2, hfp2, hpg2, hprot2⟩ := mz_call hH hE ht hord0 hL0 hR hgood
        (hst.2.1.trans hu.2.1.symm) hmoS hmot (by show mo.base.toNat ≤ _; rw [hLu]; omega)
        (by show _ ≤ mo.base.toNat + NC.toNat; rw [hLu, hNsub]; omega)
      obtain ⟨p2, hp2, -, -⟩ := trk_ptrs ht2
      obtain ⟨q1, hq1, hord1, hL1⟩ := trk_ptrs ht
      have heS' : ∃ e1 ∈ Γ0.set i mo', e1.base = e.base ∧ e1.ty = T.ev := by
        obtain ⟨e1, he1, hb1, ht1, -⟩ := ext_set hi (o' := mo') (by rw [hgi]) (by rw [hgi])
          (by rw [hgi]; show mo.size ≤ NC.toNat; omega) e he0.1
        exact ⟨e1, he1, hb1, ht1.trans he0.2.1⟩
      obtain ⟨e1, he1, hb1, ht1⟩ := heS'
      refine ⟨by rw [hpg2 gEv hE.ev_pg]; exact hev, Γ2, p2, ht2, hx2, hp2, ?_, fun k hk => ?_⟩
      · rw [← fp_eq hp2 hp1 hfp2, hfp1]
      · rw [rd, hprot2 _ (by rw [← cells_base hb1]; exact smCell_prot hE hL1 he1 ht1 ⟨k, hk, rfl⟩),
          ← rd]
        show rd u.memory _ = _
        rw [hm]
    refine hoareG_callD (funSpec_mz hC hZ) ?_ ?_
    · intro u hu hP vs hvs callee v st hR hst
      obtain ⟨hlen, hcap, hnlen, hx, hnc, hev, hm, p1, ht, hp1, hfp1⟩ := hP.2 rfl
      obtain ⟨hev2, rest⟩ := key u hu hev hm hcap hnc p1 ht hp1 hfp1 vs hvs callee _ st hR hst
        (by simp)
      obtain ⟨Γ2, p2, ht2, hx2, hp2, hfp2, hk2⟩ := rest
      exact ⟨fun h => absurd rfl h, fun _ => ⟨hlen, hnlen, hx, hnc, hev2, Γ2, p2,
        trk_congr hH ht2 rfl rfl rfl rfl, hx2, (by rw [← hp2]; exact ptrsOf_congr rfl), hfp2, hk2⟩⟩
    · intro u hu hP vs hvs callee r st hR hst habn
      obtain ⟨hlen, hcap, hnlen, hx, hnc, hev, hm, p1, ht, hp1, hfp1⟩ := hP.2 rfl
      obtain ⟨-, Γ2, p2, ht2, -, -, -, hk2⟩ := key u hu hev hm hcap hnc p1 ht hp1 hfp1 vs hvs
        callee r st hR hst (abn_good habn)
      refine ⟨fun _ => fin_of_trk hH (trk_congr hH ht2 rfl rfl rfl rfl) hp0 (fun h => by cases h)
        (fun _ _ v hv => absurd hv (abn_ne_ret habn v)) fun t' h1 _ e' X' he' _ => ?_,
        fun h => by cases h⟩
      rw [huniq e' he']
      exact ⟨by unfold fMEM; rw [h1]; exact hk2 3 (by decide), fun ⟨v, hv⟩ =>
        absurd hv (abn_ne_ret habn v)⟩
  · refine hoareG_store fun u _ hRu w v mem hw hv hmem => ?_
    obtain ⟨hlen, hnlen, hx, hnc, hev, Γ2, p2, ht2, hx2, hp2, hfp2, hk2⟩ := hRu.2 rfl
    rw [ev_evA hev] at hw; cases hw
    rw [ev_lw' hnc] at hv; cases hv
    have hmem' := store_word hmem
    subst hmem'
    have c5 : e.base + BitVec.ofNat 64 40 = e.cell 5 := rfl
    rw [c5]
    have hx02 : Ext Γ0 Γ2 := ext_trans (ext_set hi (o' := mo') (by rw [hgi]) (by rw [hgi])
      (by rw [hgi]; show mo.size ≤ NC.toNat; omega)) hx2
    obtain ⟨e2, he2, hb2, ht2', -⟩ := hx02 e he0.1
    obtain ⟨mo2, hmo2, hmob2, hmot2, hmos2⟩ := hx2 mo' hmoS
    have hrd : ∀ k ∈ smSlots, k ≠ 5 →
        rd (upd u.memory (e.cell 5) NC) (e.cell k) = rd s0.memory (e.cell k) :=
      fun k hk hk5 => by rw [rd_upd_ne (cell_ne e (sm_mem hk) (by decide) hk5), hk2 k hk]
    have hsm' : EvSM T Γ2 (upd u.memory (e.cell 5) NC) e2 := by
      refine evSM_base hb2 ⟨stkOK_transfer hx02 (hrd 1 (by decide) (by decide))
        (hrd 2 (by decide) (by decide)) (hrd 29 (by decide) (by decide)) hstk0, ?_⟩
      have e3 := hrd 3 (by decide) (by decide)
      have e4 := hrd 4 (by decide) (by decide)
      unfold MemOK fLEN fMCAP fMEM
      rw [e3, e4, rd_upd_self]
      refine ⟨?_, ?_, hNC8, mo2, hmo2, ?_, hmot2.trans hmot, hmos2⟩
      · show (fLEN s0.memory e).toNat ≤ NC.toNat; omega
      · exact m2
      · rw [hmob2]; show mo.base = fMEM s0.memory e; rw [hmob, hMEM]
    refine ⟨fun h => absurd rfl h, fun _ => ⟨hlen, hnlen, hx, hev, Γ2, e2, mo2, p2, ?_,
      (by rw [← hp2]; rfl), he2, hb2, ht2'.trans he0.2.1, hsm', hmo2, ?_,
      hmot2.trans hmot, ?_, ?_, ?_, ?_⟩⟩
    · refine trk_sm (ks := [5]) hH hE hK ht2 hord0 hL0 he2 (ht2'.trans he0.2.1) rfl rfl rfl ?_ ?_
        (evSM_base rfl hsm')
      · intro a ha
        exact upd_ne fun h => ha (Or.inl ⟨5, by decide, by decide, by rw [cells_base hb2]; exact h⟩)
      · intro k hk
        simp only [List.mem_singleton] at hk
        subst hk
        rw [cells_base hb2]; exact hPW5
    · rw [hmob2]; exact hmob
    · show NLEN.toNat ≤ (rd _ (e.cell 5)).toNat; rw [rd_upd_self]; exact hNC2
    · show (rd _ (e.cell 5)).toNat ≤ mo2.size; rw [rd_upd_self]; exact hmos2
    · show MEM.toNat + (rd _ (e.cell 5)).toNat = p2.fp; rw [rd_upd_self, hfp2]
    · intro k hk
      exact hrd k (sm5 hk) (by simp at hk; omega)

theorem emMid_locals (hH : HooksLawful C H) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e : Obj}
    {X0 LEN NLEN MEM : BitVec 64} {t t' : State σ}
    (h : EMMid C H T Γ0 s0 p0 e X0 LEN NLEN MEM t) (hm : t'.memory = t.memory)
    (hg : t'.globals = t.globals) (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be)
    (h1 : t'.locals.lookup (nm "len") = t.locals.lookup (nm "len"))
    (h2 : t'.locals.lookup (nm "nlen") = t.locals.lookup (nm "nlen"))
    (h3 : t'.locals.lookup (nm "expand_by") = t.locals.lookup (nm "expand_by")) :
    EMMid C H T Γ0 s0 p0 e X0 LEN NLEN MEM t' := by
  obtain ⟨a1, a2, a3, a4, Γ1, e1, mo1, p1, ht, hp, he1, hb1, ht1, hsm, hmo, hmob, hmot, hc, hs,
    hcont, hk⟩ := h
  exact ⟨h1.trans a1, h2.trans a2, h3.trans a3, by rw [hg]; exact a4, Γ1, e1, mo1, p1,
    trk_congr hH ht hm hg hd hbe, by rw [← hp]; exact ptrsOf_congr hg, he1, hb1, ht1,
    by rw [hm]; exact hsm, hmo, hmob, hmot, by unfold fMCAP; rw [hm]; exact hc,
    by unfold fMCAP; rw [hm]; exact hs, by unfold fMCAP; rw [hm]; exact hcont,
    fun k hk' => by rw [hm]; exact hk k hk'⟩

theorem emPost_res (hH : HooksLawful C H) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e : Obj}
    {X0 LEN NLEN MEM : BitVec 64} {n : MlS} (hn1 : n ≠ nm "len") (hn2 : n ≠ nm "nlen")
    (hn3 : n ≠ nm "expand_by") (r : Option (PanSemResultExact 64)) (t : State σ)
    (o : Option (ValueHOL 64))
    (h : (r ≠ none → emF C H T X0 s0 Γ0 r t) ∧ (r = none → EMMid C H T Γ0 s0 p0 e X0 LEN NLEN MEM t)) :
    (r ≠ none → emF C H T X0 s0 Γ0 r { t with locals := t.locals.resVarEq (n, o) }) ∧
      (r = none → EMMid C H T Γ0 s0 p0 e X0 LEN NLEN MEM { t with locals := t.locals.resVarEq (n, o) }) :=
  ⟨fun hr => fin_locals (h.1 hr) _, fun hr => emMid_locals hH (h.2 hr) rfl rfl rfl rfl
    (lookup_resVarEq_ne _ _ hn1) (lookup_resVarEq_ne _ _ hn2) (lookup_resVarEq_ne _ _ hn3)⟩

/-- **The growth branch** of `extend_memory`. -/
theorem emGrow_run (hC : X.code.lookup = guestCode) (hH : HooksLawful C H)
    (hM : HooksMono C H) (hE : EvCfg C T) (hK : EvHook C H T) {gr : Bool}
    (hFA : AllocSpec σ X (nm "frame_mem_alloc") .fmem)
    (hZ : Summ σ X C H (nm "memzero") (sgMemzero gr)) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {e : Obj} {X0 LEN NLEN MEM MCAP : BitVec 64} (hs0 : InCtx s0 X) (hG0 : G C H Γ0 s0)
    (hp0 : ptrsOf s0 = some p0) (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0)
    (he0 : EvObj T Γ0 s0 e) (hsm0 : EvSM T Γ0 s0.memory e) (hLEN : fLEN s0.memory e = LEN)
    (hMEM : fMEM s0.memory e = MEM) (hMCAP : fMCAP s0.memory e = MCAP)
    (hcont : MEM.toNat + MCAP.toNat = p0.fp) (hNb : NLEN.toNat ≤ 2 ^ 40)
    (hN32 : NLEN.toNat % 32 = 0) :
    HoareG σ X (fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.be = s0.be ∧
        t.locals.lookup (nm "len") = some (.val (.word LEN)) ∧
        t.locals.lookup (nm "cap") = some (.val (.word MCAP)) ∧
        t.locals.lookup (nm "nlen") = some (.val (.word NLEN)) ∧
        t.locals.lookup (nm "expand_by") = some (.val (.word X0)) ∧ MCAP.toNat < NLEN.toNat)
      emGrow
      (fun r t => (r ≠ none → emF C H T X0 s0 Γ0 r t) ∧
        (r = none → EMMid C H T Γ0 s0 p0 e X0 LEN NLEN MEM t)) := by
  have hMC8 : MCAP.toNat % 8 = 0 := by rw [← hMCAP]; exact hsm0.2.2.2.1
  have hMCb : MCAP.toNat < 2 ^ 32 := by
    obtain ⟨-, -, -, h4, h5, -⟩ := hord0; unfold scratchEnd at h5; omega
  refine hoareG_decN (emPost_res hH (by decide) (by decide) (by decide)) fun u _ ⟨hm, hg, hb,
    hlen, hcap, hnlen, hx, hlt⟩ v hv _ => ?_
  rw [ev_mul2 (ev_lw' hcap) (ev_cw _ 2)] at hv
  cases hv
  have hc2 : (MCAP * BitVec.ofNat 64 2).toNat = 2 * MCAP.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat]; omega
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ NC : BitVec 64, MCAP.toNat < NC.toNat ∧
      NLEN.toNat ≤ NC.toNat ∧ NC.toNat % 8 = 0 ∧ NC.toNat ≤ 2 ^ 41 ∧ t.memory = s0.memory ∧
      t.globals = s0.globals ∧ t.be = s0.be ∧
      t.locals.lookup (nm "len") = some (.val (.word LEN)) ∧
      t.locals.lookup (nm "cap") = some (.val (.word MCAP)) ∧
      t.locals.lookup (nm "nlen") = some (.val (.word NLEN)) ∧
      t.locals.lookup (nm "expand_by") = some (.val (.word X0)) ∧
      t.locals.lookup (nm "ncap") = some (.val (.word NC))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_assign fun u' _ ⟨hu', _⟩ v hv _ => ?_
      subst hu'
      rw [ev_add2 (by rw [ev_lw' (by rw [lk_set_ne _ _ (by decide)]; exact hnlen)]) (ev_cw _ 1024)]
        at hv
      cases hv
      have hn1 : (NLEN + BitVec.ofNat 64 1024).toNat = NLEN.toNat + 1024 :=
        toNat_add_small (by simp; omega)
      refine ⟨rfl, _, by rw [hn1]; omega, by rw [hn1]; omega, by rw [hn1]; omega,
        by rw [hn1]; omega, hm, hg, hb, ?_, ?_, ?_, ?_, lk_set_self _ _ _⟩ <;>
        rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)] <;> assumption
    · refine hoareG_skip fun u' _ ⟨hu', hc⟩ => ?_
      subst hu'
      obtain ⟨x, y, hx', hy, hxy⟩ := cmp_false hc
      rw [ev_lv_set] at hx'; cases hx'
      rw [ev_lw' (by rw [lk_set_ne _ _ (by decide)]; exact hnlen)] at hy; cases hy
      have := cmp_lower_false hxy
      rw [hc2] at this
      refine ⟨rfl, _, by rw [hc2]; omega, by rw [hc2]; omega, by rw [hc2]; omega,
        by rw [hc2]; omega, hm, hg, hb, ?_, ?_, ?_, ?_, lk_set_self _ _ _⟩ <;>
        rw [lk_set_ne _ _ (by decide)] <;> assumption
  · intro t ht ⟨_, NC, h1, h2, h3, h4, hm', hg', hb', hlen', hcap', hnlen', hx', hnc'⟩ hgood
    exact emGrowRest_run hC hH hM hE hK hFA hZ hs0 hG0 hp0 hord0 hL0 he0 hsm0 hLEN hMEM hMCAP
      hcont h1 h2 h3 h4 t ht ⟨hm', hg', hb', hlen', hcap', hnlen', hx', hnc'⟩ hgood

/-- **`extend_memory(X)`**: under `EMPre` (contiguity, `X % 32 = 0`, no overflow), writes
`EV_MEM_LEN`/`EV_MEM_CAP` of the running frame and frame memory (growing the memory object in
place into fresh frame memory); a return sets `MEM_LEN' = MEM_LEN + X` and keeps contiguity. -/
theorem sum_extend_memory (hC : X.code.lookup = guestCode) (hH : HooksLawful C H)
    (hM : HooksMono C H) (hE : EvCfg C T) (hK : EvHook C H T) {gr : Bool}
    (hFA : AllocSpec σ X (nm "frame_mem_alloc") .fmem)
    (hZ : Summ σ X C H (nm "memzero") (sgMemzero gr)) :
    SumSpec σ X C H (nm "extend_memory") sgEM (EMPre T) (PWev T [4, 5]) (EMQ T) := by
  refine sumSpec_of_hoare fun vs body callee rs hl s0 hs0 hloc Γ0 hG0 _ hpre => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hAl⟩ := lookupCode_one code_extend_memory hl
  obtain ⟨X0, hX0, hX32, hpre'⟩ := hpre
  simp only [List.cons.injEq, and_true] at hX0
  subst hX0
  obtain ⟨e, he⟩ := evObj_of_G hE hG0
  obtain ⟨hLX, hcont⟩ := hpre' e he
  obtain ⟨p0, hp0, hord0, hL0, -, -, -, hW0⟩ := id hG0
  have hcont0 := hcont p0 hp0
  have hsm0 := hK.get Γ0 s0 e he.1 he.2.1 (hW0 e he.1)
  have hx0 : s0.locals.lookup (nm "expand_by") = some (.val (.word X0)) := by rw [hloc]; exact hAl
  have huniq : ∀ e', EvObj T Γ0 s0 e' → e' = e := fun e' h' => evObj_unique hL0 h' he
  -- `if expand_by == 0 { return 0 }`
  refine hoareG_seq (R := fun r t => (r ≠ none → emF C H T X0 s0 Γ0 r t) ∧
      (r = none → t = s0 ∧ X0 ≠ 0)) ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_return fun u hu ⟨hu', w, hw, hw0⟩ v hv => ⟨fun _ => ?_, fun h => by cases h⟩
      subst u
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw' hx0] at hx; cases hx
      rw [ev_cw] at hy; cases hy
      have h0 := cmp_eq_true hxy
      subst h0
      refine fin_of_trk hH (trk_congr hH (trk_refl hG0 hp0) rfl rfl rfl rfl) hp0
        (fun h => by cases h) (fun _ _ _ _ => retOK_nil _) fun t' h1 h2 e' X' he' hX' => ?_
      rw [huniq e' he']
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hX'
      subst hX'
      refine ⟨by unfold fMEM; rw [h1]; rfl, fun _ => ⟨by unfold fLEN; rw [h1]; simp; rfl,
        fun p hp => ?_⟩⟩
      have : p = p0 := by
        have := (ptrsOf_congr h2).symm.trans hp
        rw [show ptrsOf (emptyLocalsHOLFinite s0) = ptrsOf s0 from ptrsOf_congr rfl, hp0] at this
        exact (Option.some.inj this).symm
      subst this
      unfold fMEM fMCAP; rw [h1]; exact hcont0
    · refine hoareG_skip fun u _ ⟨hu', hc⟩ => ⟨fun h => absurd rfl h, fun _ => ⟨hu', ?_⟩⟩
      subst u
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw' hx0] at hx; cases hx
      rw [ev_cw] at hy; cases hy
      exact cmp_eq_false hxy
  refine hoareG_pre (P := fun t => t = s0 ∧ X0 ≠ 0) ?_ (fun _ _ h => h.2 rfl)
  have hFl : ∀ r (t : State σ) l, emF C H T X0 s0 Γ0 r t → emF C H T X0 s0 Γ0 r { t with locals := l } :=
    fun r t l h => fin_locals h l
  refine hoareG_dec' hFl fun u1 _ ⟨hu1, hX0⟩ v1 hv1 _ => ?_
  subst u1
  obtain ⟨hv1', -⟩ := ev_evL he.2.2 hv1
  subst hv1'
  refine hoareG_dec' hFl fun u2 _ hu2 v2 hv2 _ => ?_
  subst u2
  obtain ⟨hv2', -⟩ := ev_evL (s := setVarHOLFinite _ _ s0) he.2.2 hv2
  have hv2'' : v2 = .val (.word (rd s0.memory (e.base + BitVec.ofNat 64 40))) := hv2'
  subst hv2''
  generalize hLEN : rd s0.memory (e.base + BitVec.ofNat 64 32) = LEN
  generalize hMCAP : rd s0.memory (e.base + BitVec.ofNat 64 40) = MCAP
  generalize hMEM : fMEM s0.memory e = MEM
  have hLEN' : fLEN s0.memory e = LEN := hLEN
  have hMCAP' : fMCAP s0.memory e = MCAP := hMCAP
  rw [hMEM, hMCAP'] at hcont0
  rw [hLEN'] at hLX
  refine hoareG_dec' hFl fun u3 _ hu3 v3 hv3 _ => ?_
  subst u3
  have hlen2 : (setVarHOLFinite (nm "cap") (.val (.word MCAP))
      (setVarHOLFinite (nm "len") (.val (.word LEN)) s0)).locals.lookup (nm "len") =
        some (.val (.word LEN)) := by rw [lk_set_ne _ _ (by decide), lk_set_self]
  have hx2 : (setVarHOLFinite (nm "cap") (.val (.word MCAP))
      (setVarHOLFinite (nm "len") (.val (.word LEN)) s0)).locals.lookup (nm "expand_by") =
        some (.val (.word X0)) := by
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hx0
  rw [ev_add2 (ev_lw' hlen2) (ev_lw' hx2)] at hv3
  cases hv3
  have hN : (LEN + X0).toNat = LEN.toNat + X0.toNat := toNat_add_small (by omega)
  have hL32 : LEN.toNat % 32 = 0 := by rw [← hLEN']; exact hsm0.2.2.1
  have hMb : MEM.toNat + LEN.toNat + X0.toNat < 2 ^ 64 := by
    have := hsm0.2.1; rw [hLEN', hMCAP'] at this
    obtain ⟨-, -, -, h4, h5, -⟩ := hord0; unfold scratchEnd at h5; omega
  -- the lookups of the state before the growth check
  set u3 := setVarHOLFinite (nm "nlen") (.val (.word (LEN + X0))) (setVarHOLFinite (nm "cap")
    (.val (.word MCAP)) (setVarHOLFinite (nm "len") (.val (.word LEN)) s0)) with hu3
  have l1 : u3.locals.lookup (nm "len") = some (.val (.word LEN)) := by
    rw [hu3, lk_set_ne _ _ (by decide)]; exact hlen2
  have l2 : u3.locals.lookup (nm "cap") = some (.val (.word MCAP)) := by
    rw [hu3, lk_set_ne _ _ (by decide), lk_set_self]
  have l3 : u3.locals.lookup (nm "nlen") = some (.val (.word (LEN + X0))) := by
    rw [hu3, lk_set_self]
  have l4 : u3.locals.lookup (nm "expand_by") = some (.val (.word X0)) := by
    rw [hu3, lk_set_ne _ _ (by decide)]; exact hx2
  refine hoareG_seq (R := fun r t => (r ≠ none → emF C H T X0 s0 Γ0 r t) ∧
      (r = none → EMMid C H T Γ0 s0 p0 e X0 LEN (LEN + X0) MEM t)) ?_ (fun r t _ hr _ h => h.1 hr)
    (hoareG_pre (emTail_run hC hH hE hK hZ hord0 hL0 hp0 he hLEN' hMEM hN (by rw [hN]; omega) hMb)
      fun t _ h => h.2 rfl)
  refine hoareG_ite ?_ ?_
  · refine hoareG_pre (emGrow_run hC hH hM hE hK hFA hZ hs0 hG0 hp0 hord0 hL0 he hsm0 hLEN' hMEM
      hMCAP' hcont0 (by rw [hN]; omega) (by rw [hN]; omega)) fun t _ ⟨ht, w, hw, hw0⟩ => ?_
    subst ht
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw' l2] at hx; cases hx
    rw [ev_lw' l3] at hy; cases hy
    exact ⟨rfl, rfl, rfl, l1, l2, l3, l4, cmp_lower_true hxy⟩
  · refine hoareG_skip fun t _ ⟨ht, hc⟩ => ⟨fun h => absurd rfl h, fun _ => ?_⟩
    subst ht
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lw' l2] at hx; cases hx
    rw [ev_lw' l3] at hy; cases hy
    have hle := cmp_lower_false hxy
    obtain ⟨hstk0, ⟨m1, m2, m3, mo, hmo, hmob, hmot, hmosz⟩⟩ := hsm0
    refine ⟨l1, l3, l4, he.2.2, Γ0, e, mo, p0, trk_congr hH (trk_refl hG0 hp0) rfl rfl rfl rfl,
      hp0, he.1, rfl, he.2.1, ⟨hstk0, ⟨m1, m2, m3, mo, hmo, hmob, hmot, hmosz⟩⟩, hmo,
      by rw [hmob, hMEM], hmot, by show _ ≤ (fMCAP s0.memory e).toNat; rw [hMCAP']; exact hle,
      hmosz, by show _ + (fMCAP s0.memory e).toNat = _; rw [hMCAP']; exact hcont0,
      fun k _ => rfl⟩

end InitECandidate.Solver.MemSafe.Struct
