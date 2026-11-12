import InitECandidate.Solver.MemSafe.Ops3.Keccak
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def cfbCostE : ExpHOL 64 := .op .add [lv (nm "base"), .panop .mul [cw 3, lv (nm "w")]]
def cfbTail : ProgHOL 64 := .seq (callD (nm "pc_add") [cw 1]) (.return (cw 0))
def cfbThen : ProgHOL 64 :=
  .decCall (nm "ms") .one (nm "sat_word") [lv (nm "mstart")]
   (.decCall (nm "ds") .one (nm "sat_word") [lv (nm "dstart")]
     (callD (nm "buffer_read") [lv (nm "buf"), lv (nm "buf_len"), lv (nm "ds"), lv (nm "n"),
       memAtX "ms"]))

def cfbBody : ProgHOL 64 :=
  .decCall (nm "mstart") (shK 4) (nm "stack_pop") []
  (.decCall (nm "dstart") (shK 4) (nm "stack_pop") []
  (.decCall (nm "size") (shK 4) (nm "stack_pop") []
  (.decCall (nm "n") .one (nm "sat_word") [lv (nm "size")]
  (.decCall (nm "w") .one (nm "words_of") [lv (nm "n")]
  (.decCall (nm "x") (shK 2) (nm "extend_memory_cost1") [lv (nm "mstart"), lv (nm "size")]
  (.decCall (nm "cost") .one (nm "add_sat") [cfbCostE, Struct.rf 0 "x"]
  (.seq (callD (nm "charge_gas") [lv (nm "cost")])
  (.seq (callD (nm "extend_memory") [Struct.rf 1 "x"])
  (.seq (.ite (.cmp .notEqual (lv (nm "n")) (cw 0)) cfbThen .skip)
    cfbTail)))))))))

theorem entry_cfb : fnEntry Guest.Software.guestFn_copy_from_buffer =
    (nm "copy_from_buffer", [(nm "base", .one), (nm "buf", .one), (nm "buf_len", .one)], cfbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_cfb : guestCode (nm "copy_from_buffer") =
    some ([(nm "base", .one), (nm "buf", .one), (nm "buf_len", .one)], cfbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 538) (by decide)) ⟨_, rfl⟩
    entry_cfb

theorem cfbTail_gc : gc gE true cfbTail = some true := by decide +kernel


theorem hoareG_end_skip {X : Ctx 64} {P : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {a : ProgHOL 64}
    (h : HoareG σ X P (.seq a .skip) Q) : HoareG σ X P a Q := by
  intro s hs hp hg
  have key : evaluateHOLFiniteState s (.seq a .skip) = evaluateHOLFiniteState s a := by
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a .skip)]
    dsimp only
    cases h1 : (evaluateHOLFiniteState s a).1 with
    | none => rw [evaluateHOLFiniteState_skip]; exact Prod.ext h1.symm rfl
    | some r => exact Prod.ext (by simp [h1]) rfl
  have := h s hs hp (by rw [key]; exact hg)
  rw [key] at this
  exact this

/-- Look a local up through a chain of `setVarHOLFinite` states. -/
syntax "lkc" : tactic
macro_rules
  | `(tactic| lkc) => `(tactic| (repeat (rw [lk_set_ne _ _ (by decide)]; try dsimp only)); first | exact lk_set_self _ _ _ | assumption)

theorem iz_of_sat {b0 b1 b2 b3 : BitVec 64} (h : Struct.satWordF b0 b1 b2 b3 ≠ 0) :
    Struct.isZeroF b0 b1 b2 b3 = 0 := by
  by_cases hor : (b0 ||| (b1 ||| (b2 ||| (b3 ||| 0)))) = 0
  · exfalso; apply h
    have hX : b1 ||| (b2 ||| (b3 ||| 0)) = 0 := (BitVec.or_eq_zero_iff.mp hor).2
    have h0 : b0 = 0 := (BitVec.or_eq_zero_iff.mp hor).1
    unfold Struct.satWordF; rw [if_pos hX]; exact h0
  · unfold Struct.isZeroF; rw [if_neg hor]

theorem cost3_pos (B W X : BitVec 64) (hb1 : 1 ≤ B.toNat) (hb2 : B.toNat < 2 ^ 60)
    (hW : W.toNat < 2 ^ 59) :
    1 ≤ (Struct.addSatF (B + BitVec.ofNat 64 3 * W) X).toNat := by
  have h1 := Struct.addSatF_ge (B + BitVec.ofNat 64 3 * W) X
  rw [BitVec.toNat_add, BitVec.toNat_mul] at h1
  simp only [BitVec.toNat_ofNat] at h1
  have h3 : 3 % 2 ^ 64 = 3 := by norm_num
  rw [h3, Nat.mod_eq_of_lt (a := 3 * W.toNat) (by omega), Nat.mod_eq_of_lt (by omega)] at h1
  omega

/-- `MEM + S` is a valid buffer of `n` bytes when `S + n ≤ MEM_LEN` (variable `ms`). -/
theorem argsOK_memAtMs {Γ1 : Gam} {p1 : Ptrs} {t : State σ} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 t) (hp : ptrsOf t = some p1)
    (hch : ChainL guestC tEV tCK Γ1 t fs) {S : BitVec 64} {n : Nat}
    (hS : ev t (lv (nm "ms")) = some (.val (.word S)))
    (hlen : S.toNat + n ≤ (fld t.memory e 32).toNat) {vs : List (ValueHOL 64)}
    (hvs : evs t [memAtX "ms"] = some vs) :
    ∃ w, vs = [.val (.word w)] ∧ BufOK guestC Γ1 p1 w.toNat n := by
  obtain ⟨x1, vs2, rfl, hx1, hvs2⟩ := evs_cons_inv hvs
  simp only [evs, evalListHOLExact, Option.some.injEq] at hvs2
  subst hvs2
  obtain ⟨w, rfl⟩ := ev_op_word hx1
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hx1
  obtain ⟨e', c', rest', hfs', he', -, -⟩ := hch.chain
  rw [hfs] at hfs'
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs'
  obtain ⟨hy', -⟩ := Struct.ev_evL (gword_some he') hy
  cases hy'
  rw [hS] at hz; cases hz
  obtain ⟨o, ho, hob, hot⟩ := (hch.objs (e, c) (by rw [hfs]; simp)).1
  subst hob
  have hb0 := (memBuf_ok hG hp ho hot (b := (fld t.memory o.base 24).toNat) (n := 0) le_rfl
    (by omega)).2
  have hadd : (rd t.memory (o.base + BitVec.ofNat 64 24) + S).toNat =
      (fld t.memory o.base 24).toNat + S.toNat :=
    Struct.toNat_add_small (x := fld t.memory o.base 24) (by have := scratchEnd_lt; omega)
  refine ⟨_, rfl, ?_⟩
  rw [hadd]
  exact (memBuf_ok hG hp ho hot (b := (fld t.memory o.base 24).toNat + S.toNat) (n := n)
    (by omega) (by omega)).1

/-- The argument check of `buffer_read(a0, a1, a2, n, MEM + ms)`. -/
theorem argsOK_brMem {Γ1 : Gam} {p1 : Ptrs} {t : State σ} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 t) (hp : ptrsOf t = some p1)
    (hch : ChainL guestC tEV tCK Γ1 t fs) {S N : BitVec 64} {a0 a1 a2 a3 : ExpHOL 64}
    (hS : ev t (lv (nm "ms")) = some (.val (.word S)))
    (h3 : ev t a3 = some (.val (.word N)))
    (hlen : S.toNat + N.toNat ≤ (fld t.memory e 32).toNat) {vs : List (ValueHOL 64)}
    (hvs : evs t [a0, a1, a2, a3, memAtX "ms"] = some vs) :
    ArgsOK guestC Γ1 p1 Helpers.sigBufferRead.params vs := by
  obtain ⟨v0, vs0, rfl, hv0, h0⟩ := evs_cons_inv hvs
  obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv h0
  obtain ⟨v2, vs2, rfl, hv2, h2⟩ := evs_cons_inv h1
  obtain ⟨v3, vs3, rfl, hv3, h3'⟩ := evs_cons_inv h2
  obtain ⟨w, rfl, hbuf⟩ := argsOK_memAtMs hfs hG hp hch hS (n := N.toNat) hlen h3'
  rw [h3] at hv3; simp only [Option.some.injEq] at hv3; subst hv3
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | _ | _ | i
  · simp [Helpers.sigBufferRead] at hpt; subst hpt; trivial
  · simp [Helpers.sigBufferRead] at hpt; subst hpt; trivial
  · simp [Helpers.sigBufferRead] at hpt; subst hpt; trivial
  · simp [Helpers.sigBufferRead] at hpt; subst hpt; trivial
  · simp [Helpers.sigBufferRead] at hpt hv; subst hpt; subst hv; exact ⟨w, N, rfl, rfl, by simpa using hbuf⟩
  · simp [Helpers.sigBufferRead] at hpt


section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

def swSgC : Sig := ⟨[.any], [], [], false⟩

/-- **The body of `copy_from_buffer`** from `GK 0` (base `B0 ∈ [1, 2^60)`). -/
theorem cfb_core (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) {u0 : State σ}
    (hk0 : KJ 0 u0) {B0 : BitVec 64}
    (hbase : u0.locals.lookup (nm "base") = some (.val (.word B0))) (hb1 : 1 ≤ B0.toNat)
    (hb2 : B0.toNat < 2 ^ 60) :
    HoareG σ guestCtx (fun t => t = u0) cfbBody (GQ (KJ) true) := by
  unfold cfbBody
  refine hoareG_gkDec hfs pop_cl hk0 fun v1 st1 hk1 hsh1 => ?_
  obtain ⟨ws1, hws1, rfl⟩ := eq_wv_of_shapeEq' hsh1
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws1
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl)
    fun v2 st2 hk2 hsh2 => ?_
  obtain ⟨ws2, hws2, rfl⟩ := eq_wv_of_shapeEq' hsh2
  obtain ⟨d0, d1, d2, d3, rfl⟩ := Struct.wv4 hws2
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk2 rfl rfl rfl rfl)
    fun v3 st3 hk3 hsh3 => ?_
  obtain ⟨ws3, hws3, rfl⟩ := eq_wv_of_shapeEq' hsh3
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hws3
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
    fun u hu vs hvs callee nv st4 hm hg hd hbe hRv hsh4 => ?_
  have hKu : KJ 0 u := by rw [hu]; exact kOK_KJ.congr _ _ _ hk3 rfl rfl rfl rfl
  have hsize : ev u (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := ev_self hu
  rw [evs_cons hsize evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hnv := hRv b0 b1 b2 b3 rfl
  subst hnv
  have hKs4 : KJ 0 st4 := kOK_KJ.congr _ _ _ hKu hm hg hd hbe
  refine hoareG_kPure (Struct.pure_words_of guestCtx_code)
    fun u2 hu2 vs2 hvs2 callee2 wv2 st5 hm2 hg2 hd2 hbe2 hRv2 hsh5 => ?_
  have hKu2 : KJ 0 u2 := kc_kj_step hu2 hKs4
  have hn : ev u2 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := ev_self hu2
  rw [evs_cons hn evs_nil] at hvs2
  simp only [Option.some.injEq] at hvs2; subst hvs2
  have hwv := hRv2 _ rfl
  subst hwv
  have hKs5 : KJ 0 st5 := kOK_KJ.congr _ _ _ hKu2 hm2 hg2 hd2 hbe2
  refine hoareG_kPure (Struct.pure_extend_memory_cost1 guestCtx_code)
    fun u3 hu3 vs3 hvs3 callee3 xv st6 hm3 hg3 hd3 hbe3 hRv3 hsh6 => ?_
  have hKu3 : KJ 0 u3 := kc_kj_step hu3 hKs5
  have hstart : ev u3 (lv (nm "mstart")) = some (wv [a0, a1, a2, a3]) := by
    rw [ev_step hu3 (by decide), ev_step hu2 (by decide), ev_step hu (by decide)]
    exact (ev_step (y := nm "dstart") (x := nm "mstart") rfl (by decide)).trans (ev_self rfl)
  have hsize3 : ev u3 (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := by
    rw [ev_step hu3 (by decide), ev_step hu2 (by decide)]
    exact ev_self hu
  rw [evs_cons hstart (evs_cons hsize3 evs_nil)] at hvs3
  simp only [Option.some.injEq] at hvs3; subst hvs3
  have hE : (callEntryStateHOLFinite u3 callee3).globals.lookup Struct.gEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs
      (show KJ 0 (callEntryStateHOLFinite u3 callee3) from kOK_KJ.congr _ _ _ hKu3 rfl rfl rfl rfl))
  have hvv := hRv3 a0 a1 a2 a3 b0 b1 b2 b3 e rfl hE
  obtain ⟨X1, X2, hCX⟩ : ∃ X1 X2, Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3
      (rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32)) = (X1, X2) :=
    ⟨_, _, rfl⟩
  rw [hCX] at hvv
  simp only at hvv
  subst hvv
  have hKs6 : KJ 0 st6 := kOK_KJ.congr _ _ _ hKu3 hm3 hg3 hd3 hbe3
  refine hoareG_kPure (Struct.pure_add_sat guestCtx_code)
    fun u4 hu4 vs4 hvs4 callee4 cv st7 hm4 hg4 hd4 hbe4 hRv4 hsh7 => ?_
  have hKu4 : KJ 0 u4 := kc_kj_step hu4 hKs6
  have hbaseU : ev u4 (lv (nm "base")) = some (.val (.word B0)) := by
    rw [ev_step hu4 (by decide), ev_step hu3 (by decide), ev_step hu2 (by decide),
      ev_step hu (by decide)]
    exact (ev_step (y := nm "dstart") (x := nm "base") rfl (by decide)).trans
      ((ev_step (y := nm "mstart") (x := nm "base") rfl (by decide)).trans (Struct.ev_lw' hbase))
  have hw : ev u4 (lv (nm "w")) = some (.val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) := by
    rw [ev_step hu4 (by decide)]; exact ev_self hu3
  have hx0 : ev u4 (Struct.rf 0 "x") = some (.val (.word X1)) :=
    Struct.ev_wv_word (lk_self hu4) (i := 0) (by simp)
  have hcost : ev u4 cfbCostE = some (.val (.word (B0 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) :=
    ev_add2 hbaseU (ev_mul2 (ev_cw _ 3) hw)
  rw [evs_cons hcost (evs_cons hx0 evs_nil)] at hvs4
  simp only [Option.some.injEq] at hvs4; subst hvs4
  have hcv := hRv4 _ _ rfl
  subst hcv
  have hKs7 : KJ 0 st7 := kOK_KJ.congr _ _ _ hKu4 hm4 hg4 hd4 hbe4
  have hmem7 : st7.memory = (callEntryStateHOLFinite u3 callee3).memory :=
    hm4.trans (by rw [hu4]; exact hm3)
  obtain ⟨hc32, hcb⟩ := gk_memlen hfs hKs7
  have hmem32 : (rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32)).toNat =
      (fld st7.memory e 32).toNat := by rw [hmem7]; rfl
  have hemok : (Struct.addSatF (B0 + BitVec.ofNat 64 3 * Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1).toNat
      + 1 < 2 ^ 64 → X2.toNat % 32 = 0 ∧ (fld st7.memory e 32).toNat + X2.toNat < 2 ^ 37 ∧
        (Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
          (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld st7.memory e 32).toNat + X2.toNat) := by
    intro ha1
    have hne : X1 ≠ Struct.wMax := by
      intro h
      rw [h, Struct.addSatF_max, Struct.wMax_toNat] at ha1; omega
    have hem : (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3
        (rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32))).1 ≠ Struct.wMax := by
      rw [hCX]; exact hne
    obtain ⟨h32, hlt, hrng⟩ := Struct.emc1_ok
      (cur := rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32))
      (by rw [hmem32]; exact hc32) (by rw [hmem32]; exact hcb) hem
    rw [hCX] at h32 hlt hrng
    simp only at h32 hlt hrng
    rw [hmem32] at hlt hrng
    exact ⟨h32, hlt, hrng⟩
  refine hoareG_gkChgExt hfs hP (d := 0)
    (a := Struct.addSatF (B0 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1) (X := X2)
    (u0 := setVarHOLFinite (nm "cost") (.val (.word (Struct.addSatF (B0 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1))) { st7 with locals := u4.locals })
    (by exact kOK_KJ.congr _ _ _ hKs7 rfl rfl rfl rfl) (e1 := lv (nm "cost"))
    (e2 := Struct.rf 1 "x") (fun t ht => ?_) (fun t ht => ?_) (fun ha1 => ?_)
    fun t ht hKt ha1 hale hlen => ?_
  · rw [ev_lv_locals ht]; exact Struct.ev_lv_set _ _ _
  · have hl : t.locals.lookup (nm "x") = some (wv [X1, X2]) := by
      rw [ht]
      show (setVarHOLFinite (nm "cost") _ _).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]
      exact lk_self (t := u4) hu4
    exact Struct.ev_wv_word hl (i := 1) (by simp)
  · obtain ⟨h32, hlt, -⟩ := hemok ha1
    refine ⟨h32, ?_⟩
    show (fld st7.memory e 32).toNat + _ ≤ _
    omega
  · have hK1 : KJ 1 t := kOK_KJ.mono _ _ _ hKt (by
      have := cost3_pos B0 _ X1 hb1 hb2 (wordsOfF_lt (Struct.satWordF b0 b1 b2 b3))
      omega)
    have hlen' : (fld t.memory e 32).toNat = (fld st7.memory e 32).toNat + X2.toNat := hlen
    have hmsT : ev t (lv (nm "mstart")) = some (wv [a0, a1, a2, a3]) := by
      rw [ev_lv_locals ht]
      refine (ev_step (y := nm "cost") (x := nm "mstart") rfl (by decide)).trans ?_
      rw [ev_step hu4 (by decide), ev_step hu3 (by decide), ev_step hu2 (by decide),
        ev_step hu (by decide)]
      exact (ev_step (y := nm "dstart") (x := nm "mstart") rfl (by decide)).trans (ev_self rfl)
    have hdsT : ev t (lv (nm "dstart")) = some (wv [d0, d1, d2, d3]) := by
      rw [ev_lv_locals ht]
      refine (ev_step (y := nm "cost") (x := nm "dstart") rfl (by decide)).trans ?_
      rw [ev_step hu4 (by decide), ev_step hu3 (by decide), ev_step hu2 (by decide),
        ev_step hu (by decide)]
      exact ev_self rfl
    have hnT : ev t (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := by
      rw [ev_lv_locals ht]
      refine (ev_step (y := nm "cost") (x := nm "n") rfl (by decide)).trans ?_
      rw [ev_step hu4 (by decide), ev_step hu3 (by decide)]
      exact ev_self hu2
    refine hoareG_seq (R := GQ (KJ) true) (hoareG_ite ?_ ?_) (fun r t' _ hr _ h => h)
      (hoareG_pt fun t' ht' => gc_sound kOK_KJ (callSem_gE hfs) _ true true cfbTail_gc t'
        (ht'.1 rfl))
    · refine hoareG_pt fun t' ⟨ht', w, hw, hw0⟩ => ?_
      rw [ht'] at hw ⊢
      rw [Struct.cmp_ne_val hnT (ev_cw _ 0)] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      have hN : Struct.satWordF b0 b1 b2 b3 ≠ 0 := by
        intro h0; rw [← hw] at hw0; simp [h0] at hw0
      have hsum := (hemok ha1).2.2 (iz_of_sat hN)
      refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
        fun v hv vs hvs callee msv st8 hm8 hg8 hd8 hbe8 hRv8 hsh8 => ?_
      subst hv
      rw [evs_cons hmsT evs_nil] at hvs
      simp only [Option.some.injEq] at hvs; subst hvs
      have hmsv := hRv8 a0 a1 a2 a3 rfl
      subst hmsv
      have hK8 : KJ 1 st8 := kOK_KJ.congr _ _ _ hK1 hm8 hg8 hd8 hbe8
      refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
        fun v2' hv2 vs9 hvs9 callee9 dsv st9 hm9 hg9 hd9 hbe9 hRv9 hsh9 => ?_
      have hdsV : ev v2' (lv (nm "dstart")) = some (wv [d0, d1, d2, d3]) := by
        rw [ev_step hv2 (by decide)]; exact hdsT
      rw [evs_cons hdsV evs_nil] at hvs9
      simp only [Option.some.injEq] at hvs9; subst hvs9
      have hdsv := hRv9 d0 d1 d2 d3 rfl
      subst hdsv
      have hKv2 : KJ 1 v2' := kc_kj_step hv2 hK8
      have hK9 : KJ 1 st9 := kOK_KJ.congr _ _ _ hKv2 hm9 hg9 hd9 hbe9
      have hmm : st9.memory = v.memory := hm9.trans (by rw [hv2]; exact hm8)
      refine hoareG_end_skip ?_
      refine hoareG_gkSumm hfs (sg := Helpers.sigBufferRead) rfl
        (Helpers.summ_buffer_read Hooks.guestHooksR_lawful Helpers.tagSlots_guestC guestCtx_code
          (Rec.foldOK_guestR (σ := σ)).hal) br_fp (d := 1) ?_ ?_
      · intro u hu
        subst hu
        refine ⟨kc_kj_step rfl hK9, fun vs hvs Γ1 p1 hG hp hch => ?_⟩
        refine argsOK_brMem hfs hG hp hch (S := Struct.satWordF a0 a1 a2 a3)
          (N := Struct.satWordF b0 b1 b2 b3) (a3 := lv (nm "n")) ?_ ?_ ?_ hvs
        · exact (ev_step (y := nm "ds") (x := nm "ms") rfl (by decide)).trans (ev_self hv2)
        · exact (ev_step (y := nm "ds") (x := nm "n") rfl (by decide)).trans
            ((ev_step hv2 (by decide)).trans hnT)
        · show _ ≤ (fld st9.memory e 32).toNat
          rw [hmm]; omega
      · exact hoareG_skip fun s _ ⟨u, hu, hl, hK, _⟩ => ⟨fun _ => hK, fun r hr => by cases hr⟩
    · exact hoareG_skip fun s _ ⟨hs, _⟩ => ⟨fun _ => hs ▸ hK1, fun r hr => by cases hr⟩

/-- **`copy_from_buffer` as a `GK` function specification**: from `GK 0` (and a base in
`[1, 2^60)`), every non-abortive result ends in `GK (rbd r)`. -/
theorem cfb_spec (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) :
    FunSpec σ guestCtx (nm "copy_from_buffer")
      (fun vs s r t => Good (some r) → ∀ (B0 : BitVec 64) (y z : ValueHOL 64),
        vs = [.val (.word B0), y, z] → 1 ≤ B0.toNat → B0.toNat < 2 ^ 60 → KJ 0 s →
        ¬ Abortive r → KJ (rbd r) t) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s hs hloc => ?_
  obtain ⟨rfl, -, A, B, C, rfl, hA, hB, hC, hlA, hlB, hlC⟩ :=
    lookupCode_three code_cfb (by decide) (by decide) (by decide) hl
  obtain ⟨b0, rfl⟩ := val_of_shapeEq_one hA
  have hbase : s.locals.lookup (nm "base") = some (.val (.word b0)) := by rw [hloc]; exact hlA
  by_cases hyp : 1 ≤ b0.toNat ∧ b0.toNat < 2 ^ 60 ∧ KJ 0 s
  · exact hoareG_conseq (cfb_core hfs hP hyp.2.2 hbase hyp.1 hyp.2.1) (fun _ _ h => h)
      (fun r t _ _ hq rr hr B0 y z hv h1 h2 hk hna => hq.2 rr hr hna)
  · intro u hu hp hg rr hr B0 y z hv h1 h2 hk
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
    obtain ⟨rfl, -, -⟩ := hv
    exact absurd ⟨h1, h2, hk⟩ hyp

/-- **`f(args); k`** for a callee with a `GK` function specification. -/
theorem hoareG_gkCallR (hfs : fs = (e, c) :: rest) {f : MlS} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} {b1 : Bool}
    {Rr : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hRf : FunSpec σ guestCtx f Rr) {u0 : State σ}
    (hstep : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      Rr vs (callEntryStateHOLFinite u0 callee) r st → Good (some r) → ¬ Abortive r →
      KJ (cbd b1 r) st) {b' : Bool}
    (hk : ∀ t : State σ, t.locals = u0.locals → KJ (bd b1) t →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD f args) k) (GQ (KJ) b') := by
  refine hoareG_seq (R := fun ro t => (ro = none → t.locals = u0.locals ∧ KJ (bd b1) t) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD hRf ?_ ?_) (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pt fun t ht => hk t (ht.1 rfl).1 (ht.1 rfl).2)
  · intro u _ hu' vs hvs callee v st hR _
    subst hu'
    have hk1 := hstep vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    exact ⟨fun _ => ⟨rfl, kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl⟩, fun r hr => by cases hr⟩
  · intro u _ hu' vs hvs callee r st hR _ habn
    subst hu'
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have := hstep vs hvs callee r st hR (good_of_abn habn) hna
    rw [cbd_abn habn] at this
    rw [rbd_abn habn]
    exact kok_loc kOK_KJ this _

end steps

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.cfb_core
#print axioms InitECandidate.Solver.MemSafe.Frames.cfb_spec
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkCallR
