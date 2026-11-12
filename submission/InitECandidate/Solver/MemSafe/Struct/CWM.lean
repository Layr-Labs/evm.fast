import InitECandidate.Solver.MemSafe.Struct.Cost
import InitECandidate.Solver.MemSafe.Struct.Mem
import InitECandidate.Solver.Spec.Memeq

/-!
# `charge_with_memory(base, start, size)`

`sum_charge_with_memory`: under `CWMPre` — **`GAS_LEFT ≠ WORD_MAX`** (§2.4, saturating memory
cost: a saturated cost makes `charge_gas` fail) and memory contiguity — the call charges
`add_sat(base, cost)` and extends memory by the returned amount. `CWMQ`: on a return, a nonempty
range `[start, start + size)` lies below the new `MEM_LEN`, contiguity holds, `EV_MEM` is
unchanged, and `GAS_LEFT` dropped by at least `base`.

Hypotheses: a `charge_gas` summary of the shape `ChargeOK` (ms-frames' `charge_evSpec` fits),
the summaries of `frame_mem_alloc` / `memzero` that `extend_memory` needs.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

variable {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} {T : STy}

/-! ## The code -/

def cwmBody : ProgHOL 64 :=
  .decCall (nm "x") (shK 2) (nm "extend_memory_cost1") [lv (nm "start"), lv (nm "size")]
    (.decCall (nm "total") .one (nm "add_sat") [lv (nm "base"), rf 0 "x"]
      (.seq (callD (nm "charge_gas") [lv (nm "total")])
        (.seq (callD (nm "extend_memory") [rf 1 "x"]) rz)))

theorem entry_charge_with_memory : fnEntry Guest.Software.guestFn_charge_with_memory =
    (nm "charge_with_memory", [(nm "base", .one), (nm "start", shK 4), (nm "size", shK 4)],
      cwmBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_charge_with_memory : guestCode (nm "charge_with_memory") =
    some ([(nm "base", .one), (nm "start", shK 4), (nm "size", shK 4)], cwmBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 461) (by decide)) ⟨_, rfl⟩
    entry_charge_with_memory

/-! ## The `charge_gas` hypothesis -/

/-- What the memory functions need of a `charge_gas` summary: it writes at most `GAS_LEFT`
(slot 8) and `REGULAR_GAS_USED` (slot 23) of the running EV object, keeps `Γ` and the globals,
and a return means the amount was at most `GAS_LEFT`, which dropped by exactly the amount. -/
structure ChargeOK (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (T : STy) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop) :
    Prop where
  spec : SumSpec σ X C H (nm "charge_gas") sg Pre PW Q
  params : sg.params = [.any]
  gw : ∀ g ∈ C.PG, g ∉ sg.gw
  pre : ∀ vs s Γ e, EvObj T Γ s e → Pre vs s Γ
  pw : ∀ vs s Γ a, PW vs s Γ a → ∃ e, EvObj T Γ s e ∧ (a = e.cell 8 ∨ a = e.cell 23)
  q : ∀ vs s Γ r t Γ', Q vs s Γ r t Γ' → Γ' = Γ ∧ t.globals = s.globals ∧
    ∀ e a, EvObj T Γ s e → vs = [.val (.word a)] →
      (rd t.memory (e.cell 8)).toNat ≤ (rd s.memory (e.cell 8)).toNat ∧
      ((∃ v, r = .returned v) → a.toNat ≤ (rd s.memory (e.cell 8)).toNat ∧
        (rd t.memory (e.cell 8)).toNat + a.toNat = (rd s.memory (e.cell 8)).toNat)

/-! ## The summary -/

def sgCWM : Sig := ⟨[.any, .any, .any], [], [], true⟩

/-- `GAS_LEFT ≠ WORD_MAX` and memory contiguity for the running frame. -/
def CWMPre (T : STy) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∀ e, EvObj T Γ s e → rd s.memory (e.cell 8) ≠ wMax ∧
    ∀ p, ptrsOf s = some p → (fMEM s.memory e).toNat + (fMCAP s.memory e).toNat = p.fp

/-- What `charge_with_memory(base, start, size)` does. -/
def CWMQ (T : STy) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (_ : Gam) : Prop :=
  ∀ e, EvObj T Γ s e → ∀ base a0 a1 a2 a3 b0 b1 b2 b3,
    vs = [.val (.word base), wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]] →
    fMEM t.memory e = fMEM s.memory e ∧
    (rd t.memory (e.cell 8)).toNat ≤ (rd s.memory (e.cell 8)).toNat ∧ ((∃ v, r = .returned v) →
      (isZeroF b0 b1 b2 b3 = 0 → (satWordF a0 a1 a2 a3).toNat + (satWordF b0 b1 b2 b3).toNat ≤
        (fLEN t.memory e).toNat) ∧
      (∀ p, ptrsOf t = some p → (fMEM t.memory e).toNat + (fMCAP t.memory e).toNat = p.fp) ∧
      (rd t.memory (e.cell 8)).toNat + base.toNat ≤ (rd s.memory (e.cell 8)).toNat)

theorem addSatF_max (b : BitVec 64) : addSatF b wMax = wMax := by
  rcases Nat.lt_or_ge (b.toNat + wMax.toNat) (2 ^ 64) with h | h
  · rw [wMax_toNat] at h
    have hb : b.toNat = 0 := by omega
    have : b = 0 := BitVec.eq_of_toNat_eq (by rw [hb]; rfl)
    subst this
    apply BitVec.eq_of_toNat_eq
    rw [(addSatF_spec _ _).1 (by rw [wMax_toNat]; omega)]
    rfl
  · exact (addSatF_spec _ _).2 h

theorem addSatF_ge (a b : BitVec 64) : a.toNat ≤ (addSatF a b).toNat := by
  rcases Nat.lt_or_ge (a.toNat + b.toNat) (2 ^ 64) with h | h
  · rw [(addSatF_spec a b).1 h]; omega
  · rw [(addSatF_spec a b).2 h, wMax_toNat]; have := a.isLt; omega

/-- The memory object of the running frame is below `2^32` bytes long. -/
theorem len_small {C : Cfg} {T : STy} (hE : EvCfg C T) {p : Ptrs} {Γ : Gam} {m : Mem} {e : Obj}
    (hord : p.Ordered) (hL : Layout C p Γ) (hsm : EvSM T Γ m e) :
    (fLEN m e).toNat ≤ (fMCAP m e).toNat ∧ (fMCAP m e).toNat < 2 ^ 32 := by
  obtain ⟨-, ⟨h1, -, -, mo, hmo, -, hmot, hsz⟩⟩ := hsm
  have hb := (obj_bounds hord hL hmo).2.1
  unfold Obj.hi scratchEnd at hb
  exact ⟨h1, by omega⟩

theorem argsOK_any {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hps : ∀ pt ∈ ps, pt = .any) (hl : ps.length = vs.length) : ArgsOK C Γ p ps vs := by
  refine ⟨hl, fun i pt v hpt _ => ?_⟩
  rw [hps pt (List.mem_of_getElem? hpt)]; trivial

theorem argCells_any {ps : List PT} {vs : List (ValueHOL 64)} (hps : ∀ pt ∈ ps, pt = .any)
    {a : BitVec 64} : ¬ ArgCells ps vs a := by
  rintro ⟨i, w, -, h⟩
  rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, x, hj, -⟩
  · have := hps _ (List.mem_of_getElem? hn); cases this
  · have := hps _ (List.mem_of_getElem? hj); cases this

/-- **`charge_with_memory`**. -/
theorem sum_charge_with_memory (hC : X.code.lookup = guestCode) (hH : HooksLawful C H)
    (hM : HooksMono C H) (hE : EvCfg C T) (hK : EvHook C H T) {gr : Bool}
    (hFA : AllocSpec σ X (nm "frame_mem_alloc") .fmem)
    (hZ : Summ σ X C H (nm "memzero") (sgMemzero gr))
    {sgC : Sig} {PreC : List (ValueHOL 64) → State σ → Gam → Prop}
    {PWC : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {QC : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hCG : ChargeOK σ X C H T sgC PreC PWC QC) (hGLp : (C.ty T.ev).slot 8 = .prot) :
    SumSpec σ X C H (nm "charge_with_memory") sgCWM (CWMPre T) (PWev T [4, 5, 8, 23])
      (CWMQ T) := by
  have hEC := pure_extend_memory_cost1 (σ := σ) hC
  have hAS := pure_add_sat (σ := σ) hC
  have hCGr := sumSpec_rel hCG.spec
  have hEMr := sumSpec_rel (sum_extend_memory hC hH hM hE hK hFA hZ)
  refine sumSpec_of_hoare fun vs body callee rs hl s0 hs0 hloc Γ0 hG0 _ hpre => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cv, rfl, ha, hb, hc, hA, hB, hCl⟩ := lookupCode_three
    code_charge_with_memory (by decide) (by decide) (by decide) hl
  obtain ⟨base, rfl⟩ := val_of_shapeEq_one ha
  obtain ⟨wa, hla4, rfl⟩ := eq_wv_of_shapeEq hb
  obtain ⟨wb, hlb4, rfl⟩ := eq_wv_of_shapeEq hc
  obtain ⟨a0, a1, a2, a3, rfl⟩ := wv4 hla4
  obtain ⟨b0, b1, b2, b3, rfl⟩ := wv4 hlb4
  have lbase : s0.locals.lookup (nm "base") = some (.val (.word base)) := by rw [hloc]; exact hA
  have lstart : s0.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) := by rw [hloc]; exact hB
  have lsize : s0.locals.lookup (nm "size") = some (wv [b0, b1, b2, b3]) := by rw [hloc]; exact hCl
  obtain ⟨e, he⟩ := evObj_of_G hE hG0
  obtain ⟨p0, hp0, hord0, hL0, -, -, -, hW0⟩ := id hG0
  obtain ⟨hgl, hcont⟩ := hpre e he
  have hcont0 := hcont p0 hp0
  have hsm0 := hK.get Γ0 s0 e he.1 he.2.1 (hW0 e he.1)
  obtain ⟨hLM, hMb⟩ := len_small hE hord0 hL0 hsm0
  have hL32 : (fLEN s0.memory e).toNat % 32 = 0 := hsm0.2.2.1
  have huniq : ∀ e', EvObj T Γ0 s0 e' → e' = e := fun e' h' => evObj_unique hL0 h' he
  set PWs := fun a => ProtCell C Γ0 a ∧ PWev T [4, 5, 8, 23]
    [.val (.word base), wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]] s0 Γ0 a with hPWs
  have hPWa : ∀ a, ProtCell C Γ0 a → (∃ k ∈ [4, 5, 8, 23], a = e.cell k) → PWs a :=
    fun a hp ⟨k, hk, ha⟩ => ⟨hp, e, he, k, hk, ha⟩
  -- `var x = extend_memory_cost1(start, size); var total = add_sat(base, x.0)`
  refine hoareG_decCallPb hEC (fun r t o h => fin_locals h _) fun u _ hu vs hvs callee v hR _ => ?_
  subst u
  rw [evs_cons (ev_lw' lstart) (evs_cons (ev_lw' lsize) evs_nil)] at hvs
  cases hvs
  have hvv := hR a0 a1 a2 a3 b0 b1 b2 b3 e.base rfl he.2.2
  subst hvv
  set CX := emc1F a0 a1 a2 a3 b0 b1 b2 b3 (rd s0.memory (e.base + BitVec.ofNat 64 32)) with hCX
  refine hoareG_decCallPb hAS (fun r t o h => fin_locals h _) fun u _ ⟨hm, hg, hb, hl⟩ vs hvs callee
    v hR _ => ?_
  have lx : u.locals.lookup (nm "x") = some (wv [CX.1, CX.2]) := by rw [hl]; exact lk_upd_self _ _ _
  unfold rf at hvs
  rw [evs_cons (ev_lw' (by rw [hl, lk_upd_ne' _ _ (by decide)]; exact lbase))
    (evs_cons (ev_wv_word lx (i := 0) (by simp)) evs_nil)] at hvs
  cases hvs
  have hvv := hR _ _ rfl
  subst hvv
  set TOT := addSatF base CX.1 with hTOT
  have hT0 : ∀ t : State σ, InCtx t X → t.memory = s0.memory → t.globals = s0.globals →
      t.be = s0.be → Trk C H Γ0 s0 p0 PWs Γ0 t :=
    fun t ht hm hg hb => trk_congr hH (trk_refl hG0 hp0) hm hg (ht.2.1.trans hs0.2.1.symm) hb
  have hpc : ∀ k ∈ smSlots ++ [8], ProtCell C Γ0 (e.cell k) := by
    intro k hk
    simp only [List.mem_append, List.mem_singleton] at hk
    rcases hk with hk | rfl
    · exact smCell_prot hE hL0 he.1 he.2.1 ⟨k, hk, rfl⟩
    · exact ⟨e, he.1, 8, ev_hasSlot hE hL0 he.1 he.2.1 (by omega), he.2.1 ▸ hGLp, rfl⟩
  have hEv : ∀ t : State σ, t.globals = s0.globals → EvObj T Γ0 t e :=
    fun t ht => ⟨he.1, he.2.1, by rw [ht]; exact he.2.2⟩
  have hEu : ∀ t : State σ, t.globals = s0.globals → ∀ e', EvObj T Γ0 t e' → e' = e :=
    fun t ht e' h' => evObj_unique hL0 h' (hEv t ht)
  -- `charge_gas(total)`
  refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
      t.be = s0.be ∧ t.locals.lookup (nm "x") = some (wv [CX.1, CX.2]) ∧
      t.locals.lookup (nm "total") = some (.val (.word TOT))) ?_ (fun t _ ⟨hm', hg', hb', hl'⟩ =>
        ⟨hm'.trans hm, hg'.trans hg, hb'.trans hb, by rw [hl', lk_upd_ne' _ _ (by decide)]; exact lx,
          by rw [hl']; exact lk_upd_self _ _ _⟩)
  have hGL0 := hgl
  have key1 : ∀ (u : State σ), InCtx u X → u.memory = s0.memory → u.globals = s0.globals →
      u.be = s0.be → u.locals.lookup (nm "total") = some (.val (.word TOT)) →
      ∀ vs, evs u [lv (nm "total")] = some vs → ∀ callee r (st : State σ),
      (SumRel C H sgC PreC PWC QC vs (callEntryStateHOLFinite u callee) r st ∧
        st.be = (callEntryStateHOLFinite u callee).be) → InCtx st X → Good (some r) →
      Trk C H Γ0 s0 p0 PWs Γ0 st ∧ st.globals = s0.globals ∧
      (∀ k ∈ smSlots, rd st.memory (e.cell k) = rd s0.memory (e.cell k)) ∧
      (rd st.memory (e.cell 8)).toNat ≤ (rd s0.memory (e.cell 8)).toNat ∧
      ((∃ v, r = .returned v) → TOT.toNat ≤ (rd s0.memory (e.cell 8)).toNat ∧
        (rd st.memory (e.cell 8)).toNat + TOT.toNat = (rd s0.memory (e.cell 8)).toNat) := by
    intro u hu hm hg hb ht vs hvs callee r st ⟨hR, hbe⟩ hst hgood
    rw [evs_cons (ev_lw' ht) evs_nil] at hvs
    cases hvs
    have hT := hT0 u hu hm hg hb
    obtain ⟨Γ', pp, pp', ht', hc, hQ⟩ := trk_callSum (sg := sgC) (Pre := PreC) (PW' := PWC) (Q := QC)
      (t' := callEntryStateHOLFinite u callee) hH hT hord0 hL0 rfl rfl rfl rfl hR hgood
      (fun _ _ => hCG.params ▸ argsOK_any1 rfl)
      (hCG.pre _ _ _ e (hEv _ hg)) hCG.gw
      (fun a ha => absurd ha (hCG.params ▸ argCells_any1))
      (fun a hpa hpw => by
        obtain ⟨e', he', hk⟩ := hCG.pw _ _ _ a hpw
        rw [hEu _ hg e' he'] at hk
        exact hPWa a hpa ⟨if a = e.cell 8 then 8 else 23, by split <;> simp,
          by rcases hk with h | h <;> simp [h, Obj.cell]⟩)
      (hst.2.1.trans hu.2.1.symm) hbe
    obtain ⟨hΓ, hgst, hq⟩ := hCG.q _ _ _ _ _ _ hQ
    subst Γ'
    have hGu : G C H Γ0 (callEntryStateHOLFinite u callee) := G_congr (s := s0) hH hm hg
      (hu.2.1.trans hs0.2.1.symm) hb hG0
    have hkeep : ∀ k ∈ smSlots, rd st.memory (e.cell k) = rd s0.memory (e.cell k) := by
      intro k hk
      rw [rd, sumCore_prot hGu hc (fun a ha => absurd ha (hCG.params ▸ argCells_any1))
        (hpc k (List.mem_append_left _ hk)) (fun hpw => ?_), ← rd]
      · show rd u.memory _ = _; rw [hm]
      · obtain ⟨e', he', hk'⟩ := hCG.pw _ _ _ _ hpw
        rw [hEu _ hg e' he'] at hk'
        rcases hk' with h | h <;>
          exact absurd h (cell_ne e (sm_mem hk) (by decide) (by
            simp only [smSlots, List.mem_cons, List.not_mem_nil, or_false] at hk; omega))
    have h8 : rd (callEntryStateHOLFinite u callee).memory (e.cell 8) = rd s0.memory (e.cell 8) := by
      show rd u.memory _ = _; rw [hm]
    obtain ⟨hle8, hq'⟩ := hq e TOT (hEv _ hg) rfl
    rw [h8] at hle8 hq'
    exact ⟨ht', hgst.trans hg, hkeep, hle8, hq'⟩
  have hok : CX.1 ≠ wMax → CX.2.toNat % 32 = 0 ∧ (fLEN s0.memory e).toNat + CX.2.toNat < 2 ^ 37 ∧
      (isZeroF b0 b1 b2 b3 = 0 → (satWordF a0 a1 a2 a3).toNat + (satWordF b0 b1 b2 b3).toNat ≤
        (fLEN s0.memory e).toNat + CX.2.toNat) :=
    fun hne => emc1_ok (cur := fLEN s0.memory e) hL32 (by omega) hne
  refine hoareG_seq (R := fun r t => (r ≠ none → Fin C H sgCWM PWs Γ0 s0
      [.val (.word base), wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]] (CWMQ T) r t) ∧ (r = none →
      t.globals = s0.globals ∧ t.locals.lookup (nm "x") = some (wv [CX.1, CX.2]) ∧
      Trk C H Γ0 s0 p0 PWs Γ0 t ∧ (∀ k ∈ smSlots, rd t.memory (e.cell k) = rd s0.memory (e.cell k)) ∧
      CX.1 ≠ wMax ∧ (rd t.memory (e.cell 8)).toNat + base.toNat ≤ (rd s0.memory (e.cell 8)).toNat))
    ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_callD (FunSpec.and (R := SumRel C H sgC PreC PWC QC) hCG.spec (funSpec_be' _))
      ?_ ?_
    · intro u hu ⟨hm', hg', hb', hlx, hlt⟩ vs hvs callee v st hR hst
      obtain ⟨ht, hgst, hkeep, -, hq⟩ := key1 u hu hm' hg' hb' hlt vs hvs callee _ st hR hst (by simp)
      obtain ⟨hle, heq⟩ := hq ⟨v, rfl⟩
      have hTne : TOT ≠ wMax := by
        intro h; rw [h, wMax_toNat] at hle
        have := (rd s0.memory (e.cell 8)).isLt
        exact hgl (BitVec.eq_of_toNat_eq (by rw [wMax_toNat]; omega))
      have hCne : CX.1 ≠ wMax := fun h => hTne (by rw [hTOT, h, addSatF_max])
      refine ⟨fun h => absurd rfl h, fun _ => ⟨hgst, hlx, trk_congr hH ht rfl rfl rfl rfl, hkeep, hCne,
        ?_⟩⟩
      show (rd st.memory (e.cell 8)).toNat + _ ≤ _
      have := addSatF_ge base CX.1
      rw [← hTOT] at this
      omega
    · intro u hu ⟨hm', hg', hb', hlx, hlt⟩ vs hvs callee r st hR hst habn
      obtain ⟨ht, -, hkeep, hle8, -⟩ := key1 u hu hm' hg' hb' hlt vs hvs callee r st hR hst
        (abn_good habn)
      refine ⟨fun _ => fin_of_trk hH (trk_congr hH ht rfl rfl rfl rfl) hp0 (fun h => by cases h)
        (fun _ _ v hv => absurd hv (abn_ne_ret habn v)) fun t' h1 _ e' he' => ?_, fun h => by cases h⟩
      rw [huniq e' he']
      intro base' a0' a1' a2' a3' b0' b1' b2' b3' _
      exact ⟨by unfold fMEM; rw [h1]; exact hkeep 3 (by decide), by rw [h1]; exact hle8,
        fun ⟨v, hv⟩ => absurd hv (abn_ne_ret habn v)⟩
  refine hoareG_pre (P := fun t => t.globals = s0.globals ∧
      t.locals.lookup (nm "x") = some (wv [CX.1, CX.2]) ∧
      Trk C H Γ0 s0 p0 PWs Γ0 t ∧ (∀ k ∈ smSlots, rd t.memory (e.cell k) = rd s0.memory (e.cell k)) ∧
      CX.1 ≠ wMax ∧ (rd t.memory (e.cell 8)).toNat + base.toNat ≤ (rd s0.memory (e.cell 8)).toNat) ?_
    (fun _ _ h => h.2 rfl)
  -- `extend_memory(x.1)`
  have key2 : ∀ (u : State σ), InCtx u X → u.globals = s0.globals →
      u.locals.lookup (nm "x") = some (wv [CX.1, CX.2]) → Trk C H Γ0 s0 p0 PWs Γ0 u →
      (∀ k ∈ smSlots, rd u.memory (e.cell k) = rd s0.memory (e.cell k)) → CX.1 ≠ wMax →
      ∀ vs, evs u [rf 1 "x"] = some vs → ∀ callee r (st : State σ),
      (SumRel C H sgEM (EMPre T) (PWev T [4, 5]) (EMQ T) vs (callEntryStateHOLFinite u callee) r st ∧
        st.be = (callEntryStateHOLFinite u callee).be) → InCtx st X → Good (some r) →
      ∃ Γ2, Trk C H Γ0 s0 p0 PWs Γ2 st ∧ st.globals.lookup gEv = s0.globals.lookup gEv ∧
        rd st.memory (e.cell 8) = rd u.memory (e.cell 8) ∧ fMEM st.memory e = fMEM s0.memory e ∧
        ((∃ v, r = .returned v) → (fLEN st.memory e).toNat = (fLEN s0.memory e).toNat + CX.2.toNat ∧
          ∀ p, ptrsOf st = some p → (fMEM st.memory e).toNat + (fMCAP st.memory e).toNat = p.fp) := by
    intro u hu hg hx ht hkeep hne vs hvs callee r st ⟨hR, hbe⟩ hst hgood
    unfold rf at hvs
    rw [evs_cons (ev_wv_word hx (i := 1) (by simp)) evs_nil] at hvs
    cases hvs
    obtain ⟨h32, hlt, -⟩ := hok hne
    have hptu : ∀ p, ptrsOf (callEntryStateHOLFinite u callee) = some p → p = p0 := fun p hp => by
      have := (ptrsOf_congr (s := s0) (t := callEntryStateHOLFinite u callee) hg).symm.trans hp
      rw [hp0] at this; exact (Option.some.inj this).symm
    have hpre : EMPre T [.val (.word CX.2)] (callEntryStateHOLFinite u callee) Γ0 := by
      refine ⟨CX.2, rfl, h32, fun e1 he1 => ?_⟩
      have he2 := hEu _ hg e1 he1
      subst he2
      have e4 : fLEN (callEntryStateHOLFinite u callee).memory e1 = fLEN s0.memory e1 :=
        hkeep 4 (by decide)
      have e3 : fMEM (callEntryStateHOLFinite u callee).memory e1 = fMEM s0.memory e1 :=
        hkeep 3 (by decide)
      have e5 : fMCAP (callEntryStateHOLFinite u callee).memory e1 = fMCAP s0.memory e1 :=
        hkeep 5 (by decide)
      refine ⟨by rw [e4]; omega, fun p hp => ?_⟩
      rw [hptu p hp, e3, e5]; exact hcont0
    obtain ⟨Γ2, pp, pp1, ht2, hc, hQ⟩ := trk_callSum (sg := sgEM) (Pre := EMPre T)
      (PW' := PWev T [4, 5]) (Q := EMQ T) (t' := callEntryStateHOLFinite u callee) hH ht hord0 hL0
      rfl rfl rfl rfl hR hgood (fun _ _ => argsOK_any1 rfl) hpre (fun _ _ => by simp [sgEM])
      (fun a ha => absurd ha argCells_any1)
      (fun a hpa ⟨e1, he1, k, hk, hak⟩ => by
        rw [hEu _ hg e1 he1] at hak
        exact hPWa a hpa ⟨k, by simp at hk ⊢; omega, hak⟩)
      (hst.2.1.trans hu.2.1.symm) hbe
    have hGu : G C H Γ0 (callEntryStateHOLFinite u callee) := G_congr (s := u) hH rfl rfl rfl rfl
      (trk_G ht)
    have hk8 : rd st.memory (e.cell 8) = rd u.memory (e.cell 8) := by
      rw [rd, sumCore_prot hGu hc (fun a ha => absurd ha argCells_any1) (hpc 8 (by simp))
        (fun ⟨e1, he1, k, hk, hak⟩ => ?_), ← rd]
      · rfl
      · rw [hEu _ hg e1 he1] at hak
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
        rcases hk with rfl | rfl <;>
          exact absurd hak (cell_ne e (by decide) (by decide) (by decide))
    obtain ⟨hmem, hret⟩ := hQ e CX.2 (hEv _ hg) rfl
    refine ⟨Γ2, ht2, by rw [hc.2.2.2.2.2.2.2.1 gEv hE.ev_pg (by simp [sgEM])]; exact hg ▸ rfl, hk8,
      ?_, fun hr => ?_⟩
    · rw [hmem]; exact hkeep 3 (by decide)
    · obtain ⟨h1, h2⟩ := hret hr
      refine ⟨?_, h2⟩
      rw [h1]
      have : fLEN (callEntryStateHOLFinite u callee).memory e = fLEN s0.memory e :=
        hkeep 4 (by decide)
      rw [this]
  refine hoareG_seq (R := fun r t => (r ≠ none → Fin C H sgCWM PWs Γ0 s0
      [.val (.word base), wv [a0, a1, a2, a3], wv [b0, b1, b2, b3]] (CWMQ T) r t) ∧ (r = none →
      ∃ Γ2, Trk C H Γ0 s0 p0 PWs Γ2 t ∧ t.globals.lookup gEv = s0.globals.lookup gEv ∧
        (rd t.memory (e.cell 8)).toNat + base.toNat ≤ (rd s0.memory (e.cell 8)).toNat ∧
        fMEM t.memory e = fMEM s0.memory e ∧
        (fLEN t.memory e).toNat = (fLEN s0.memory e).toNat + CX.2.toNat ∧
        (∀ p, ptrsOf t = some p → (fMEM t.memory e).toNat + (fMCAP t.memory e).toNat = p.fp) ∧
        CX.1 ≠ wMax)) ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_callD (FunSpec.and (R := SumRel C H sgEM (EMPre T) (PWev T [4, 5]) (EMQ T))
      (sum_extend_memory hC hH hM hE hK hFA hZ) (funSpec_be' _)) ?_ ?_
    · intro u hu ⟨hg', hlx, ht, hkeep, hne, hgas⟩ vs hvs callee v st hR hst
      obtain ⟨Γ2, ht2, hev2, hk8, hmem, hret⟩ := key2 u hu hg' hlx ht hkeep hne vs hvs callee _ st hR
        hst (by simp)
      obtain ⟨hlen, hc⟩ := hret ⟨v, rfl⟩
      refine ⟨fun h => absurd rfl h, fun _ => ⟨Γ2, trk_congr hH ht2 rfl rfl rfl rfl, hev2, ?_, hmem,
        hlen, fun p hp => hc p (by rw [← hp]; exact ptrsOf_congr rfl), hne⟩⟩
      show (rd st.memory (e.cell 8)).toNat + _ ≤ _
      rw [hk8]; exact hgas
    · intro u hu ⟨hg', hlx, ht, hkeep, hne, hgas⟩ vs hvs callee r st hR hst habn
      obtain ⟨Γ2, ht2, -, hk8', hmem, -⟩ := key2 u hu hg' hlx ht hkeep hne vs hvs callee r st hR hst
        (abn_good habn)
      refine ⟨fun _ => fin_of_trk hH (trk_congr hH ht2 rfl rfl rfl rfl) hp0 (fun h => by cases h)
        (fun _ _ v hv => absurd hv (abn_ne_ret habn v)) fun t' h1 _ e1 he1 => ?_, fun h => by cases h⟩
      rw [huniq e1 he1]
      intro _ _ _ _ _ _ _ _ _ _
      refine ⟨by unfold fMEM at hmem ⊢; rw [h1]; exact hmem, ?_, fun ⟨v, hv⟩ =>
        absurd hv (abn_ne_ret habn v)⟩
      rw [h1]; show (rd st.memory _).toNat ≤ _; rw [hk8']; omega
  · refine hoareG_return fun u _ hR v hv => ?_
    obtain ⟨Γ2, ht2, hev2, hgas, hmem, hlen, hc, hne⟩ := hR.2 rfl
    rw [ev_cw] at hv; cases hv
    obtain ⟨-, -, hcov⟩ := hok hne
    refine fin_of_trk hH (trk_congr hH ht2 rfl rfl rfl rfl) hp0 (fun h => by cases h)
      (fun _ _ _ _ => retOK_nil _) fun t' h1 h2 e1 he1 => ?_
    rw [huniq e1 he1]
    intro base' a0' a1' a2' a3' b0' b1' b2' b3' hvs
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, h2a, h2b⟩ := hvs
    have e1 := wv_inj h2a
    have e2 := wv_inj h2b
    simp only [List.cons.injEq, and_true] at e1 e2
    obtain ⟨rfl, rfl, rfl, rfl⟩ := e1
    obtain ⟨rfl, rfl, rfl, rfl⟩ := e2
    refine ⟨by unfold fMEM at hmem ⊢; rw [h1]; exact hmem, by rw [h1]; show (rd u.memory _).toNat ≤ _; omega,
      fun _ => ⟨fun hz => ?_, fun p hp => ?_, ?_⟩⟩
    · unfold fLEN at hlen ⊢; rw [h1]; show _ ≤ (rd u.memory _).toNat; rw [hlen]; exact hcov hz
    · unfold fMEM fMCAP at hc ⊢; rw [h1]
      exact hc p ((ptrsOf_congr h2).symm.trans hp)
    · rw [h1]; exact hgas

end InitECandidate.Solver.MemSafe.Struct
