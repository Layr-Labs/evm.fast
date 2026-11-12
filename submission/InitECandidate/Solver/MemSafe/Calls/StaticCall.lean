import InitECandidate.Solver.MemSafe.Calls.OpCall
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_staticcall`'s bounded step spec (frames14)

The op_call skeleton without the value (no transfer cost, no `is_account_alive`, no
insufficient-balance branch), with `var started = generic_call(…)` in `decCall` form:

* `hq_gcD`: `var rn = generic_call(args); k` (the decCall form of `hq_gc`);
* `scBody` (AST 606, `scBody_eq`) and the blocks `scK1 … scK4`, `scGc`;
* `sc_gc`, `sc_k3`, `sc_k2`, `sc_k1`, `sc_body`;
* **`j_op_staticcall_of hP hCH : OpStepB σ guestCtx guestHooksR (nm "op_staticcall")`**.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-! ## The code -/

def scGcArgs : List (ExpHOL 64) :=
  [(.rfield 1 (lv (nm "mcg"))), (lv (nm "reservoir")), (.rstruct [(cw 0), (cw 0), (cw 0), (cw 0)]),
    (.load .one (.op .add [(lv (nm "msg")), (cw 32)])), (lv (nm "to")), (lv (nm "code_address")),
    (cw 1), (cw 1), (lv (nm "is")), (lv (nm "isz")), (lv (nm "os")), (lv (nm "osz")),
    (.rfield 0 (lv (nm "code"))), (.rfield 1 (lv (nm "code"))), (.rfield 0 (lv (nm "dl"))), (cw 0)]

def scGc : ProgHOL 64 :=
  .decCall (nm "is") .one (nm "sat_word") [(lv (nm "in_start"))]
    (.decCall (nm "isz") .one (nm "sat_word") [(lv (nm "in_size"))]
      (.decCall (nm "os") .one (nm "sat_word") [(lv (nm "out_start"))]
        (.decCall (nm "osz") .one (nm "sat_word") [(lv (nm "out_size"))]
          (.decCall (nm "started") .one (nm "generic_call") scGcArgs callTail))))

def scK4 : ProgHOL 64 :=
  .seq (callD (nm "charge_gas") [(.rfield 0 (lv (nm "mcg")))])
    (.seq (.store (.op .add [(gv (nm "ev")), (cw 184)])
        (.op .sub [(.load .one (.op .add [(gv (nm "ev")), (cw 184)])), (.rfield 1 (lv (nm "mcg")))]))
      (.seq (callD (nm "extend_memory") [(.rfield 1 (lv (nm "x")))])
        (.dec (nm "reservoir") .one (.load .one (.op .add [(gv (nm "ev")), (cw 72)]))
          (.seq (.store (.op .add [(gv (nm "ev")), (cw 72)]) (cw 0)) scGc))))

def scK3 : ProgHOL 64 :=
  .decCall (nm "code") (shK 2) (nm "ext_code_of") [(lv (nm "code_address"))]
    (.decCall (nm "gw") .one (nm "sat_word") [(lv (nm "gasv"))]
      (.decCall (nm "mcg") (shK 2) (nm "calculate_message_call_gas")
          [(.rstruct [(cw 0), (cw 0), (cw 0), (cw 0)]), (lv (nm "gw")),
            (.load .one (.op .add [(gv (nm "ev")), (cw 64)])), (cw 0), (cw 0)]
        scK4))

def scK2 : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "warm")) (cw 0)) (callD (nm "warm_address") [(lv (nm "to"))]) .skip)
    (.decCall (nm "dl") (shK 3) (nm "calculate_delegation_cost") [(lv (nm "to"))]
      (.dec (nm "code_address") .one (.rfield 1 (lv (nm "dl")))
        (.seq ocDlgIte scK3)))

def scK1 : ProgHOL 64 :=
  .decCall (nm "x") (shK 2) (nm "extend_memory_cost2")
      [(lv (nm "in_start")), (lv (nm "in_size")), (lv (nm "out_start")), (lv (nm "out_size"))]
    (.decCall (nm "warm") .one (nm "is_warm_address") [(lv (nm "to"))]
      (.dec (nm "access_cost") .one (cw 100)
        (.seq (.ite (.cmp .equal (lv (nm "warm")) (cw 0))
            (.assign .local (nm "access_cost") (cw 3000)) .skip)
          (.decCall (nm "need") .one (nm "add_sat") [(lv (nm "access_cost")), (.rfield 0 (lv (nm "x")))]
            (.seq (callD (nm "charge_gas") [(lv (nm "need"))]) scK2)))))

def scBody : ProgHOL 64 :=
  .decCall (nm "gasv") (shK 4) (nm "stack_pop") []
    (.decCall (nm "tov") (shK 4) (nm "stack_pop") []
      (.decCall (nm "to") .one (nm "to_address_masked") [(lv (nm "tov"))]
        (.decCall (nm "in_start") (shK 4) (nm "stack_pop") []
          (.decCall (nm "in_size") (shK 4) (nm "stack_pop") []
            (.decCall (nm "out_start") (shK 4) (nm "stack_pop") []
              (.decCall (nm "out_size") (shK 4) (nm "stack_pop") []
                (.dec (nm "msg") .one (.load .one (.op .add [(gv (nm "ev")), (cw 112)])) scK1)))))))

theorem scBody_eq : (declPair Guest.Software.guestFn_op_staticcall).2.2 = scBody := by
  conv => lhs; cbv
  rfl

theorem mcgSt_zero : mcgSt 0 0 0 0 = 0 := by decide

theorem ev_z4 (s : State σ) : ev s (.rstruct [cw 0, cw 0, cw 0, cw 0]) =
    some (wv [BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0, BitVec.ofNat 64 0]) :=
  ev_c4w s 0

section proof
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- **`var rn = generic_call(args); k`** from `KCall [] d` (`d ≥ gas + 3`): `k` runs from `KF1`. -/
theorem hq_gcD (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) {rn : MlS} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} {d : Nat} {u0 : State σ} (hu : KC [] d u0)
    {gas res tgt ca tr st is isz os osz code cn dp nac : BitVec 64} {value : ValueHOL 64}
    (hargs : ∀ vs, evs u0 args = some vs → ∃ caller : BitVec 64,
      vs = gcArgs gas res value caller tgt ca tr st is isz os osz code cn dp nac ∧
      ∀ (Γ1 : Gam) (p1 : Ptrs),
        RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
        ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
        BufOK guestC Γ1 p1 caller.toNat 20 ∧ BufOK guestC Γ1 p1 tgt.toNat 20)
    (hsp : (fld u0.memory e evSp).toNat < (fld u0.memory e evStackCap).toNat)
    (hout : osz = 0 ∨ os.toNat + osz.toNat ≤ (fld u0.memory e evMemLen).toNat)
    (hisz : isz.toNat < 2 ^ 32)
    (hcn : cn.toNat + 63 < 2 ^ 64) (hd : gas.toNat + 3 ≤ d)
    (hk : ∀ (v : ValueHOL 64) (stt : State σ), KF1 Γ0 s0 stt →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { stt with locals := u0.locals }) k QC) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn .one (nm "generic_call") args k) QC := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, -⟩, hΦ0, -⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  have hspec := gc_sumSpecT_guestRh (σ := σ) hP (M := Phi u0 + gas.toNat + 2)
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r (stt : State σ),
      SumRelX guestC (Hooks.guestHooksR (σ := σ))
        (sgA 16 (nmEv :: nmCC :: ([Hooks.gJn] ++ [] ++ [Hooks.gJn]))) (PreGC (Phi u0 + gas.toNat + 2))
        (fun _ _ Γ a => ¬ KCell guestC Γ a) QGC vs (callEntryStateHOLFinite u0 callee) r stt →
      Good (some r) → ¬ Abortive r →
      ∃ Γ', G guestC (Hooks.guestHooksR (σ := σ)) Γ' stt ∧ (∃ p', ptrsOf stt = some p') ∧
        JrNZ stt ∧ (∀ v, r = .returned v → ChainX guestC tEV tCK GP GR Γ' stt ∧ Phi stt + 1 ≤ Phi s0) ∧
        (∀ v, r = .exception nmEvmErr v → ChainX guestC tEV tCK GP GR Γ' stt ∧
          Phi stt + 1 ≤ Phi s0) ∧ KeepH guestC Γ0 Γ' s0 stt ∧
        (∀ v, r = .returned v → RootK s0 stt) ∧ (∀ v, r = .exception nmEvmErr v → RootK s0 stt) ∧
        BKeep guestC Γ0 s0 stt ∧ Ext Γ0 Γ' := by
    intro vs hvs callee r stt hR hg hna
    obtain ⟨caller, rfl, hbuf⟩ := hargs vs hvs
    have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 (callEntryStateHOLFinite u0 callee) :=
      (G_locFree hF.hooks u0 _ _).mpr hG1
    have hpe : ptrsOf (callEntryStateHOLFinite u0 callee) = some p1 := (ptrsOf_congr rfl).trans hp1
    obtain ⟨hb1, hb2⟩ := hbuf Γ1 p1 hrun hch hE
    have hpre : PreGC (Phi u0 + gas.toNat + 2)
        (gcArgs gas res value caller tgt ca tr st is isz os osz code cn dp nac)
        (callEntryStateHOLFinite u0 callee) Γ1 :=
      ⟨gas, res, caller, tgt, ca, tr, st, is, isz, os, osz, code, cn, dp, nac, value, rfl, fs, e, c,
        rest, chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch, hfs, hsp,
        hout, hisz, by have := phi_locFree.entry (σ := σ) u0 callee; omega, hcn, jrNZ_congr rfl hJ,
        chainE_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hE,
        fun p hp => by
          rw [hpe, Option.some.injEq] at hp
          subst hp
          exact ⟨hb1, hb2⟩⟩
    obtain ⟨Γ', q, q', hc, hQ⟩ := hR hg hna Γ1 hGe ⟨p1, hpe,
      argsOK_any (sgA_any 16 _) rfl⟩ hpre
    obtain rfl : q = p1 := Option.some.inj (hc.1.symm.trans hpe)
    have hΦe : Phi (callEntryStateHOLFinite u0 callee) = Phi u0 := phi_locFree.entry u0 callee
    obtain ⟨hq1, hq2⟩ := hQ gas rfl
    have hR0 : RootK s0 (callEntryStateHOLFinite u0 callee) :=
      rootK_congr (s := s0) (t := u0) rfl rfl rfl rfl (rootK_of_same (Fact.out : ChainOf s0 fs) hch.chain)
    have hcc : ChainOf (callEntryStateHOLFinite u0 callee) fs :=
      (chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch).chain
    refine ⟨Γ', hc.2.2.2.2.2.1, ⟨q', hc.2.1⟩,
      jrNZ_sumCore (by decide) (by decide) hc (jrNZ_congr rfl hJ), fun v hv => ?_, fun v hv => ?_,
      keepH_of_runT_sumCore hrun rfl hc,
      fun v hv => rootK_trans hR0 (hq1 v hv).2.2 ⟨fs, hcc⟩,
      fun v hv => rootK_trans hR0 (hq2 v hv).2.2 ⟨fs, hcc⟩,
      ⟨bkeep_of_runT_sumCore hrun rfl hGe (argsOK_any (sgA_any 16 _) rfl) hc (fun _ h => h),
        ext_trans hrun.2.2.2.1 hc.2.2.2.1⟩⟩
    · obtain ⟨h1, h2, -⟩ := hq1 v hv
      exact ⟨h1, by omega⟩
    · obtain ⟨h1, h2, -⟩ := hq2 v hv
      exact ⟨h1, by omega⟩
  refine hq_decCall (Q := QC) hspec (fun ro t l h => qcall_loc h l) ?_ ?_
  · intro vs hvs callee r stt hR habn r' hr' hna
    cases hr'
    obtain ⟨Γ', hG', -, hJ', hret, hexc, hKe, hrk, hrke, hbk, -⟩ := key vs hvs callee r stt hR (good_of_abn habn) hna
    exact ⟨Γ', hG', ⟨fun v hv => ⟨(hret v hv).1, by have := (hret v hv).2; omega⟩,
      fun v hv => ⟨(hexc v hv).1, by have := (hexc v hv).2; omega⟩⟩, fun _ _ => hJ', fun _ _ => hJ',
      fun _ _ => hKe, fun _ _ => hKe, fun v hv => hrk v hv, fun v hv => hrke v hv,
      fun _ _ => hbk, fun _ _ => hbk⟩
  · intro vs hvs callee v stt hR _
    obtain ⟨Γ', hG', ⟨q', hq'⟩, hJ', hret, -, hKe, hrk, -, hbk, hex⟩ := key vs hvs callee _ stt hR (by simp [Good])
      (not_abortive_ret v)
    obtain ⟨⟨fs', hch', hE'⟩, hΦ'⟩ := hret v rfl
    exact hk v stt ⟨hJ', ⟨Γ', q', fs', hG', hq', hch', hE', hKe, hrk v rfl, hbk, hex⟩, hΦ'⟩

/-- **`scGc`**: the four `sat_word`s, `generic_call` and the tail. -/
theorem sc_gc (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {d : Nat}
    {u0 : State σ} (hu : KC [] d u0) {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 M0 M1 R MSG CA C0 C1 D0 D1 D2 : BitVec 64}
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (l5 : xs.lookup (nm "mcg") = some (wv [M0, M1]))
    (l6 : xs.lookup (nm "reservoir") = some (.val (.word R)))
    (l8 : xs.lookup (nm "msg") = some (.val (.word MSG)))
    (l9 : xs.lookup (nm "to") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (l10 : xs.lookup (nm "code_address") = some (.val (.word CA)))
    (l11 : xs.lookup (nm "code") = some (wv [C0, C1]))
    (l12 : xs.lookup (nm "dl") = some (wv [D0, D1, D2]))
    (h112 : fld u0.memory e 112 = MSG)
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hout : Struct.isZeroF z0 z1 z2 z3 = 0 → (Struct.satWordF o0 o1 o2 o3).toNat +
      (Struct.satWordF z0 z1 z2 z3).toNat ≤ (fld u0.memory e 32).toNat)
    (hin : Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
      (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld u0.memory e 32).toNat)
    (hcn : C1.toNat + 63 < 2 ^ 64) (hd : M1.toNat + 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) scGc QC := by
  have hQ := postOK_qc (Γ0 := Γ0) (p0 := p0) (fs := fs) ha0
  unfold scGc
  refine oc_satw hQ hu hL l1 fun u1 hu1 hm1 hL1 => ?_
  refine oc_satw hQ hu1 hL1 (by rw [List.lookup]; exact l2) fun u2 hu2 hm2 hL2 => ?_
  refine oc_satw hQ hu2 hL2 (by rw [List.lookup, List.lookup]; exact l3) fun u3 hu3 hm3 hL3 => ?_
  refine oc_satw hQ hu3 hL3 (by rw [List.lookup, List.lookup, List.lookup]; exact l4)
    fun u4 hu4 hm4 hL4 => ?_
  have hm : u4.memory = u0.memory := hm4.trans (hm3.trans (hm2.trans hm1))
  set IS := Struct.satWordF a0 a1 a2 a3
  set ISZ := Struct.satWordF b0 b1 b2 b3
  set OS := Struct.satWordF o0 o1 o2 o3
  set OSZ := Struct.satWordF z0 z1 z2 z3
  have g : ∀ {x : MlS} {v : ValueHOL 64}, xs.lookup x = some v → x ≠ nm "is" → x ≠ nm "isz" →
      x ≠ nm "os" → x ≠ nm "osz" → u4.locals.lookup x = some v := by
    intro x v hx h1 h2 h3 h4
    refine hL4 x v ?_
    have e1 : (x == nm "osz") = false := by simpa using h4
    have e2 : (x == nm "os") = false := by simpa using h3
    have e3 : (x == nm "isz") = false := by simpa using h2
    have e4 : (x == nm "is") = false := by simpa using h1
    simp only [List.lookup, e1, e2, e3, e4]
    exact hx
  refine hq_gcD hP hfs hu4 (gas := M1) (res := R) (value := wv [0, 0, 0, 0])
    (tgt := e + BitVec.ofNat 64 240) (ca := CA) (tr := BitVec.ofNat 64 1) (st := BitVec.ofNat 64 1)
    (is := IS) (isz := ISZ) (os := OS) (osz := OSZ) (code := C0) (cn := C1) (dp := D0)
    (nac := BitVec.ofNat 64 0) ?_ ?_ ?_ ?_ hcn (by omega) fun v stt hkf => ?_
  · intro vs hvs
    obtain ⟨x1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨x2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨x3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    obtain ⟨x4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
    rw [Struct.ev_wv_word (g l5 (by decide) (by decide) (by decide) (by decide)) (i := 1) (by simp)]
      at h1
    cases h1
    rw [ev_lv, g l6 (by decide) (by decide) (by decide) (by decide)] at h2
    cases h2
    rw [ev_z4] at h3
    cases h3
    obtain ⟨w, hw, -, rfl⟩ := ev_load_one h4
    rw [ev_add2 (by rw [ev_lv, g l8 (by decide) (by decide) (by decide) (by decide)]) (ev_cw _ 32)]
      at hw
    cases hw
    have e9 : ev u4 (lv (nm "to")) = some (.val (.word (e + BitVec.ofNat 64 240))) := by
      rw [ev_lv, g l9 (by decide) (by decide) (by decide) (by decide)]
    have e10 : ev u4 (lv (nm "code_address")) = some (.val (.word CA)) := by
      rw [ev_lv, g l10 (by decide) (by decide) (by decide) (by decide)]
    have eC0 := Struct.ev_wv_word (g l11 (by decide) (by decide) (by decide) (by decide)) (i := 0)
      (by simp)
    have eC1 := Struct.ev_wv_word (g l11 (by decide) (by decide) (by decide) (by decide)) (i := 1)
      (by simp)
    have eD0 := Struct.ev_wv_word (g l12 (by decide) (by decide) (by decide) (by decide)) (i := 0)
      (by simp)
    have eIs : ev u4 (lv (nm "is")) = some (.val (.word IS)) := la_ev hL4 rfl
    have eIsz : ev u4 (lv (nm "isz")) = some (.val (.word ISZ)) := la_ev hL4 rfl
    have eOs : ev u4 (lv (nm "os")) = some (.val (.word OS)) := la_ev hL4 rfl
    have eOsz : ev u4 (lv (nm "osz")) = some (.val (.word OSZ)) := la_ev hL4 rfl
    rw [evs_cons e9 (evs_cons e10 (evs_cons (ev_cw _ 1) (evs_cons (ev_cw _ 1) (evs_cons eIs
      (evs_cons eIsz (evs_cons eOs (evs_cons eOsz (evs_cons eC0 (evs_cons eC1 (evs_cons eD0
      (evs_cons (ev_cw _ 0) evs_nil)))))))))))] at hr4
    cases hr4
    refine ⟨rd u4.memory (MSG + BitVec.ofNat 64 32), ?_, fun Γ1 p1 hrun hch hE =>
      ⟨?_, addr_bufOK hfs hrun hch⟩⟩
    · rw [mem_rd u4.memory (MSG + BitVec.ofNat 64 32)]
      rfl
    · have hgp := (hE.1 p1 hrun.2.1 (e, c) (by rw [hfs]; exact List.mem_cons_self ..)).2.1 32
        (by simp [msgXOffs])
      have hmsg : msgOf u4.memory (e, c) = MSG := by
        show fld u4.memory e 112 = MSG
        rw [hm]; exact h112
      rw [hmsg] at hgp
      exact hgp
  · show (fld u4.memory e 16).toNat < (fld u4.memory e 232).toNat
    rw [hm]; exact hsp
  · by_cases hz : Struct.isZeroF z0 z1 z2 z3 = 0
    · right
      show _ ≤ (fld u4.memory e 32).toNat
      rw [hm]; exact hout hz
    · left
      exact satW_zero_of hz
  · -- eon: `in_size < 2^32`
    by_cases hz : Struct.isZeroF b0 b1 b2 b3 = 0
    · have h1 := hin hz
      have h2 := (gk_memlen32 hfs (kcall_gk hu)).2
      omega
    · show (Struct.satWordF b0 b1 b2 b3).toNat < 2 ^ 32
      rw [satW_zero_of hz]; decide
  · exact hq_tail (kf1_congr hkf rfl rfl rfl rfl)

/-- **`scK3`**: `ext_code_of`, `gw`, `mcg` (value 0), `charge_gas(mcg.0)`, `st ev+184`,
`extend_memory(x.1)`, `reservoir`, `st ev+72, 0`, then `sc_gc`. -/
theorem sc_k3 (hP : PreHyps σ) (hCH : CallHyps σ) (hfs : fs = (e, c) :: rest)
    (hPh : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1) {d : Nat} {u0 : State σ} {CA : BitVec 64}
    (hu : KC [CA] d u0) {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {g0 g1 g2 g3 X0 X1 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 MSG D0 D1 D2
      cur : BitVec 64}
    (lg : xs.lookup (nm "gasv") = some (wv [g0, g1, g2, g3]))
    (lx : xs.lookup (nm "x") = some (wv [X0, X1]))
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (l8 : xs.lookup (nm "msg") = some (.val (.word MSG)))
    (l9 : xs.lookup (nm "to") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (l10 : xs.lookup (nm "code_address") = some (.val (.word CA)))
    (l12 : xs.lookup (nm "dl") = some (wv [D0, D1, D2]))
    (h112 : fld u0.memory e 112 = MSG)
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hcur : fld u0.memory e 32 = cur) (hX32 : X1.toNat % 32 = 0)
    (hXb : cur.toNat + X1.toNat < 2 ^ 37)
    (hout : Struct.isZeroF z0 z1 z2 z3 = 0 → (Struct.satWordF o0 o1 o2 o3).toNat +
      (Struct.satWordF z0 z1 z2 z3).toNat ≤ cur.toNat + X1.toNat)
    (hin : Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
      (Struct.satWordF b0 b1 b2 b3).toNat ≤ cur.toNat + X1.toNat)
    (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) scK3 QC := by
  have hQ := postOK_qc (Γ0 := Γ0) (p0 := p0) (fs := fs) ha0
  unfold scK3
  refine hq_eco hCH.eco hfs ha0 hu (la_ev hL l10) fun C0 C1 st hk1 hcn hkE hk112 => ?_
  have hL1 := la_set (s := { st with locals := u0.locals }) hL (nm "code") (wv [C0, C1])
  have hk1' : KC [] d (setVarHOLFinite (nm "code") (wv [C0, C1]) { st with locals := u0.locals }) :=
    kcall_congr hk1 rfl rfl rfl rfl
  -- `gw = sat_word(gasv)`
  refine oc_satw hQ hk1' hL1 (lk_cons_ne (by decide) lg) fun u1 hu1 hm1 hL1' => ?_
  set GW := Struct.satWordF g0 g1 g2 g3
  -- `mcg = calculate_message_call_gas(<0,0,0,0>, gw, GAS, 0, 0)`
  refine hq_pure hQ (pure_mcg guestCtx_code) fun vs hvs callee v st2 hm2 hg2 hd2 hb2 hR2 hsh2 => ?_
  obtain ⟨x1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨x2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨x3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
  rw [ev_z4] at h1
  cases h1
  rw [la_ev hL1' rfl] at h2
  cases h2
  obtain ⟨h3', -⟩ := ev_gLoad_eq (gk_gword hfs (kcall_gk hu1)) h3
  subst h3'
  rw [evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)] at hr3
  cases hr3
  obtain ⟨M0, M1, rfl, hM⟩ := hR2 _ _ _ _ GW _ rfl
  have hM' : M1.toNat ≤ M0.toNat := by
    have h0 : mcgSt (BitVec.ofNat 64 0) (BitVec.ofNat 64 0) (BitVec.ofNat 64 0)
        (BitVec.ofNat 64 0) = 0 := mcgSt_zero
    rw [h0] at hM; simpa using hM
  have hu2 : KC [] d (setVarHOLFinite (nm "mcg") (wv [M0, M1]) { st2 with locals := u1.locals }) :=
    kcall_congr hu1 hm2 hg2 hd2 hb2
  have hL2 := la_set (s := { st2 with locals := u1.locals }) hL1' (nm "mcg") (wv [M0, M1])
  have hS1 : Slots e st.memory u0.memory := by
    intro k hk
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl
    · exact hkE 2 (by simp [evProtSlots])
    · exact hkE 29 (by simp [evProtSlots])
    · exact hkE 4 (by simp [evProtSlots])
    · exact hk112
  have hm2' : st2.memory = st.memory := hm2.trans hm1
  -- `charge_gas(mcg.0)` … `st ev + 72, 0`, as in `oc_k4`
  unfold scK4
  refine hq_charge hfs hPh hQ.toC (a := M0) hu2
    (Struct.ev_wv_word (hL2 (nm "mcg") (wv [M0, M1]) rfl) (i := 0) (by simp))
    fun st3 hk3 _ _ hm3 _ => ?_
  refine hq_st hfs (j := 23) rfl (by simp [evDriverSlots]) (by decide) (by decide) (by decide)
    (kcall_loc hk3 _) (fun v' hv' => ev_op_word hv') fun x4 st4 hk4 hm4 hl4 => ?_
  have k3 : ∀ k, k < 2 ^ 64 → k ≠ 64 → k ≠ 184 → fld st3.memory e k = fld st.memory e k :=
    fun k hk h64 h184 => by
      rw [hm3]
      show fld (chargeMem st2.memory e M0) e k = _
      rw [fld_chargeK _ _ _ hk h64 h184, hm2']
  have k4 : ∀ k, k < 2 ^ 64 → k ≠ 64 → k ≠ 184 → fld st4.memory e k = fld st.memory e k :=
    fun k hk h64 h184 => by
      rw [hm4]
      show fld (upd st3.memory (e + BitVec.ofNat 64 184) x4) e k = _
      rw [fld_upd_ne _ (off_ne e hk (by decide) h184)]
      exact k3 k hk h64 h184
  have hL4 : LocsAre st4.locals ((nm "mcg", wv [M0, M1]) :: (nm "gw", .val (.word GW)) ::
      (nm "code", wv [C0, C1]) :: xs) := by
    rw [hl4]; exact hL2
  have h32st : fld st.memory e 32 = cur := by rw [hS1 32 (by simp), hcur]
  refine hq_emX hfs hk4 (X := X1)
    (Struct.ev_wv_word (hL4 _ _ (lk_cons3 lx (by decide) (by decide) (by decide))) (i := 1)
      (by simp)) hX32 (by rw [k4 32 (by decide) (by decide) (by decide), h32st]; omega)
    fun st5 hk5 hlen5 hkeep5 h112' => ?_
  have hm16 : fld st5.memory e 16 = fld u0.memory e 16 := by
    rw [show (16 : Nat) = 8 * 2 from rfl, hkeep5 2 (by simp [evProtSlots]) (by decide)]
    rw [k4 16 (by decide) (by decide) (by decide)]; exact hS1 16 (by simp)
  have hm232 : fld st5.memory e 232 = fld u0.memory e 232 := by
    rw [show (232 : Nat) = 8 * 29 from rfl, hkeep5 29 (by simp [evProtSlots]) (by decide)]
    rw [k4 232 (by decide) (by decide) (by decide)]; exact hS1 232 (by simp)
  have hm112 : fld st5.memory e 112 = MSG := by
    rw [h112', k4 112 (by decide) (by decide) (by decide), hS1 112 (by simp), h112]
  have hm32 : (fld st5.memory e 32).toNat = cur.toNat + X1.toNat := by
    rw [hlen5, k4 32 (by decide) (by decide) (by decide), h32st]
  refine hoareG_dec fun s _ hs vr hvr _ => ?_
  subst s
  obtain ⟨hvr', -⟩ := ev_gLoad_eq (gk_gword hfs (kcall_gk (kcall_loc hk5 st4.locals))) hvr
  subst hvr'
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  set R := fld st5.memory e 72
  have hL5 := la_set (s := { st5 with locals := st4.locals }) hL4 (nm "reservoir") (.val (.word R))
  refine hq_st hfs (j := 9) rfl (by simp [evDriverSlots]) (by decide) (by decide) (by decide)
    (kcall_loc hk5 _) (fun v' hv' => by rw [ev_cw] at hv'; exact ⟨_, (Option.some.inj hv').symm⟩)
    fun x6 st6 hk6 hm6 hl6 => ?_
  have k6 : ∀ k, k < 2 ^ 64 → k ≠ 72 → fld st6.memory e k = fld st5.memory e k :=
    fun k hk h72 => by
      rw [hm6]
      show fld (upd st5.memory (e + BitVec.ofNat 64 72) x6) e k = _
      rw [fld_upd_ne _ (off_ne e hk (by decide) h72)]
  have hL6 : LocsAre st6.locals ((nm "reservoir", .val (.word R)) :: (nm "mcg", wv [M0, M1]) ::
      (nm "gw", .val (.word GW)) :: (nm "code", wv [C0, C1]) :: xs) := by rw [hl6]; exact hL5
  have lk4 : ∀ {x : MlS} {v : ValueHOL 64}, xs.lookup x = some v → x ≠ nm "reservoir" →
      x ≠ nm "mcg" → x ≠ nm "gw" → x ≠ nm "code" →
      ((nm "reservoir", ValueHOL.val (.word R)) :: (nm "mcg", wv [M0, M1]) ::
        (nm "gw", .val (.word GW)) :: (nm "code", wv [C0, C1]) :: xs).lookup x = some v :=
    fun hx h1 h2 h3 h4 => lk_cons_ne h1 (lk_cons_ne h2 (lk_cons_ne h3 (lk_cons_ne h4 hx)))
  exact sc_gc hP hfs ha0 hk6 hL6 (lk4 l1 (by decide) (by decide) (by decide) (by decide))
    (lk4 l2 (by decide) (by decide) (by decide) (by decide))
    (lk4 l3 (by decide) (by decide) (by decide) (by decide))
    (lk4 l4 (by decide) (by decide) (by decide) (by decide))
    (lk_cons_ne (by decide) rfl) rfl
    (lk4 l8 (by decide) (by decide) (by decide) (by decide))
    (lk4 l9 (by decide) (by decide) (by decide) (by decide))
    (lk4 l10 (by decide) (by decide) (by decide) (by decide))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) (lk_cons_ne (by decide) rfl)))
    (lk4 l12 (by decide) (by decide) (by decide) (by decide))
    (by rw [k6 112 (by decide) (by decide)]; exact hm112)
    (by rw [k6 16 (by decide) (by decide), k6 232 (by decide) (by decide), hm16, hm232]; exact hsp)
    (fun hz => by rw [k6 32 (by decide) (by decide), hm32]; exact hout hz)
    (fun hz => by rw [k6 32 (by decide) (by decide), hm32]; exact hin hz) hcn
    (by omega)

/-- **`scK2`** (as `oc_k2`). -/
theorem sc_k2 (hP : PreHyps σ) (hCH : CallHyps σ) (hfs : fs = (e, c) :: rest)
    (hPh : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1) {d : Nat} {u0 : State σ} (hu : KC [] d u0)
    {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {g0 g1 g2 g3 X0 X1 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 MSG cur : BitVec 64}
    (lg : xs.lookup (nm "gasv") = some (wv [g0, g1, g2, g3]))
    (lx : xs.lookup (nm "x") = some (wv [X0, X1]))
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (l8 : xs.lookup (nm "msg") = some (.val (.word MSG)))
    (l9 : xs.lookup (nm "to") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (h112 : fld u0.memory e 112 = MSG)
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat)
    (hcur : fld u0.memory e 32 = cur) (hX32 : X1.toNat % 32 = 0)
    (hXb : cur.toNat + X1.toNat < 2 ^ 37)
    (hout : Struct.isZeroF z0 z1 z2 z3 = 0 → (Struct.satWordF o0 o1 o2 o3).toNat +
      (Struct.satWordF z0 z1 z2 z3).toNat ≤ cur.toNat + X1.toNat)
    (hin : Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
      (Struct.satWordF b0 b1 b2 b3).toNat ≤ cur.toNat + X1.toNat)
    (hd : 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) scK2 QC := by
  unfold scK2
  let F1 : State σ → Prop := fun t => KC [] d t ∧ t.locals = u0.locals ∧ Slots e t.memory u0.memory
  have hS0 : Slots e u0.memory u0.memory := fun k _ => rfl
  refine hoareG_seq (R := JP Γ0 s0 F1) (hoareG_ite ?_ ?_)
    (fun r t _ hr _ h => h.elim (fun h' => absurd h'.1 hr) (fun h' => h'.2)) ?_
  · refine hoareG_pre (hoareG_unseq (hq_tabC hfs (postOKC_jp (p0 := p0) (fs := fs) ha0 F1)
      (fun g h => h) wa_memC wa_fpC callE_wa hu
      (fun vs hvs Γ1 p1 hrun hch _ _ => to_argsOK hfs hL l9 hvs hrun hch)
      fun st hk hkE hk112 => hoareG_skip fun t _ ht => Or.inl ⟨rfl, ?_⟩)) fun t _ h => h.1
    rw [ht]
    exact ⟨kcall_loc hk _, rfl, slots_tab hkE hk112 hS0⟩
  · exact hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, by rw [ht]; exact ⟨hu, rfl, hS0⟩⟩
  intro t1 ht1 hJ hg
  rcases hJ with ⟨-, hk1, hl1, hS1⟩ | ⟨h', -⟩
  swap
  · exact absurd rfl h'
  have hL1 : LocsAre t1.locals xs := by rw [hl1]; exact hL
  refine (hq_dlg hCH.dlg hfs ha0 hk1 (la_ev hL1 l9)
    fun a b cc st hk2 hab hkE2 hk112 => ?_) t1 ht1 rfl hg
  have hS2 : Slots e st.memory u0.memory := by
    intro k hk
    rw [← hS1 k hk]
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl
    · exact hkE2 2 (by simp [evProtSlots])
    · exact hkE2 29 (by simp [evProtSlots])
    · exact hkE2 4 (by simp [evProtSlots])
    · exact hk112
  have hL2 := la_set (s := { st with locals := t1.locals }) hL1 (nm "dl") (wv [a, b, cc])
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [Struct.ev_wv_word (hL2 (nm "dl") (wv [a, b, cc]) rfl) (i := 1) (by simp)] at hv
  cases hv
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  set u3 := setVarHOLFinite (nm "code_address") (.val (.word b))
    (setVarHOLFinite (nm "dl") (wv [a, b, cc]) { st with locals := t1.locals }) with hu3def
  have hk3 : KC [b] d u3 := kcall_congr hk2 rfl rfl rfl rfl
  have hL3 : LocsAre u3.locals ((nm "code_address", .val (.word b)) :: (nm "dl", wv [a, b, cc]) :: xs) :=
    la_set hL2 _ _
  let F2 : State σ → Prop := fun t => KC [b] d t ∧ t.locals = u3.locals ∧ Slots e t.memory u0.memory
  refine hoareG_seq (R := JP Γ0 s0 F2) ?_
    (fun r t _ hr _ h => h.elim (fun h' => absurd h'.1 hr) (fun h' => h'.2)) ?_
  · unfold ocDlgIte
    refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, by rw [ht]; exact ⟨hk3, rfl, hS2⟩⟩)
    refine hoareG_pre (P := fun t => t = u3) ?_ fun t _ h => h.1
    refine hq_charge hfs hPh (postOKC_jp (p0 := p0) (fs := fs) ha0 F2) (a := cc) hk3
      (Struct.ev_wv_word (hL3 (nm "dl") (wv [a, b, cc]) rfl) (i := 2) (by simp))
      fun st4 hk4 _ _ hm4 _ => ?_
    have hS4 : Slots e st4.memory u0.memory := by rw [hm4]; exact slots_charge hS2
    refine hoareG_unseq (hq_tabC hfs (postOKC_jp (p0 := p0) (fs := fs) ha0 F2)
      (fun g h => h) wa_memC wa_fpC callE_wa (kcall_mono (kcall_loc hk4 u3.locals) (Nat.le_add_right d _))
      (fun vs hvs Γ1 p1 hrun hch hE hB => ?_)
      fun st5 hk5 hkE5 hk5_112 => hoareG_skip fun t _ ht => Or.inl ⟨rfl, ?_⟩)
    · rw [evs_cons (la_ev (s := { st4 with locals := u3.locals }) (x := nm "code_address")
        (v := .val (.word b)) hL3 rfl) evs_nil] at hvs
      cases hvs
      refine ⟨rfl, fun i pt v hpt hv => ?_⟩
      rcases i with _ | i
      · simp only [waSg, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
        subst hpt; subst hv
        exact ⟨_, rfl, hB b (by simp)⟩
      · simp [waSg] at hpt
    · rw [ht]
      exact ⟨kcall_loc hk5 _, rfl, slots_tab hkE5 hk5_112 hS4⟩
  intro t4 ht4 hJ hg
  rcases hJ with ⟨-, hk4, hl4, hS4⟩ | ⟨h', -⟩
  swap
  · exact absurd rfl h'
  have hL4 : LocsAre t4.locals ((nm "code_address", .val (.word b)) :: (nm "dl", wv [a, b, cc]) :: xs) := by
    rw [hl4]; exact hL3
  have e16 := hS4 16 (by simp)
  have e232 := hS4 232 (by simp)
  have e32 := hS4 32 (by simp)
  have e112 := hS4 112 (by simp)
  exact sc_k3 hP hCH hfs hPh ha0 hk4 hL4
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) lg))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) lx))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l1))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l2))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l3))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l4))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l8))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) l9)) rfl (lk_cons_ne (by decide) rfl)
    (by rw [e112, h112]) (by rw [e16, e232]; exact hsp) (by rw [e32, hcur]) hX32 hXb hout hin hd
    t4 ht4 rfl hg

/-- **`scK1`** (as `oc_k1`, without the transfer cost). -/
theorem sc_k1 (hP : PreHyps σ) (hCH : CallHyps σ) (hfs : fs = (e, c) :: rest)
    (hPh : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1) {u0 : State σ} (hu : KC [] 0 u0)
    {xs : List (MlS × ValueHOL 64)} (hL : LocsAre u0.locals xs)
    {g0 g1 g2 g3 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 MSG : BitVec 64}
    (lg : xs.lookup (nm "gasv") = some (wv [g0, g1, g2, g3]))
    (l1 : xs.lookup (nm "in_start") = some (wv [a0, a1, a2, a3]))
    (l2 : xs.lookup (nm "in_size") = some (wv [b0, b1, b2, b3]))
    (l3 : xs.lookup (nm "out_start") = some (wv [o0, o1, o2, o3]))
    (l4 : xs.lookup (nm "out_size") = some (wv [z0, z1, z2, z3]))
    (l8 : xs.lookup (nm "msg") = some (.val (.word MSG)))
    (l9 : xs.lookup (nm "to") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (h112 : fld u0.memory e 112 = MSG)
    (hsp : (fld u0.memory e 16).toNat < (fld u0.memory e 232).toNat) :
    HoareG σ guestCtx (fun t => t = u0) scK1 QC := by
  have hQ := postOK_qc (Γ0 := Γ0) (p0 := p0) (fs := fs) ha0
  have hE : u0.globals.lookup Struct.gEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs (kcall_gk hu))
  obtain ⟨hc32, hcb⟩ := gk_memlen hfs (kcall_gk hu)
  set cur := fld u0.memory e 32 with hcur
  unfold scK1
  refine hq_pure hQ (pure_emc2 guestCtx_code) fun vs hvs callee v st1 hm1 hg1 hd1 hb1 hR1 _ => ?_
  rw [evs_cons (la_ev hL l1) (evs_cons (la_ev hL l2) (evs_cons (la_ev hL l3)
    (evs_cons (la_ev hL l4) evs_nil)))] at hvs
  cases hvs
  have hv := hR1 a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 e rfl hE
  subst hv
  set XX := emc2F a0 a1 a2 a3 b0 b1 b2 b3 o0 o1 o2 o3 z0 z1 z2 z3 cur with hXX
  have hu1 : KC [] 0 (setVarHOLFinite (nm "x") (wv [XX.1, XX.2]) { st1 with locals := u0.locals }) :=
    kcall_congr hu hm1 hg1 hd1 hb1
  have hL1 := la_set (s := { st1 with locals := u0.locals }) hL (nm "x") (wv [XX.1, XX.2])
  have hm1' : st1.memory = u0.memory := hm1
  refine hq_tab hfs ha0 (fun g h => h) iwa_mem iwa_fp callE_iwa (funSpec_true _) hu1
    (fun vs hvs Γ1 p1 _ _ _ _ => argsOK_any (by simp [iwaSg]) (by rw [evs_len hvs]; rfl))
    fun vs2 hvs2 callee2 vw st2 hk2 hkE2 hk2_112 _ hshw => ?_
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hshw
  have hS2 : Slots e st2.memory u0.memory := by
    intro k hk
    have h0 : fld st1.memory e k = fld u0.memory e k := by rw [hm1']
    rw [← h0]
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl
    · exact hkE2 2 (by simp [evProtSlots]) (fun h => by simp [evKs] at h)
    · exact hkE2 29 (by simp [evProtSlots]) (fun h => by simp [evKs] at h)
    · exact hkE2 4 (by simp [evProtSlots]) (fun h => by simp [evKs] at h)
    · exact hk2_112
  set u2 := setVarHOLFinite (nm "warm") (.val (.word W))
    { st2 with locals := (setVarHOLFinite (nm "x") (wv [XX.1, XX.2]) { st1 with locals := u0.locals }).locals }
    with hu2
  have hL2 : LocsAre u2.locals ((nm "warm", .val (.word W)) :: (nm "x", wv [XX.1, XX.2]) :: xs) :=
    la_set hL1 _ _
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  let ys2 := (nm "warm", ValueHOL.val (.word W)) :: (nm "x", wv [XX.1, XX.2]) :: xs
  let FA : State σ → Prop := fun t => t.memory = st2.memory ∧ t.globals = st2.globals ∧
    t.memaddrs = st2.memaddrs ∧ t.be = st2.be ∧ ∃ AC : BitVec 64,
      (AC = BitVec.ofNat 64 100 ∨ AC = BitVec.ofNat 64 3000) ∧
      LocsAre t.locals ((nm "access_cost", .val (.word AC)) :: ys2)
  have hLa := la_set hL2 (nm "access_cost") (.val (.word (BitVec.ofNat 64 100)))
  refine hoareG_seq (R := fun ro t => ro = none ∧ FA t) (hoareG_ite ?_ ?_)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_assign fun t _ ⟨ht, _⟩ w hw _ => ?_
    subst ht
    rw [ev_cw] at hw
    cases hw
    exact ⟨rfl, rfl, rfl, rfl, rfl, _, Or.inr rfl, la_shadow (la_set hLa _ _)⟩
  · exact hoareG_skip fun t _ ⟨ht, _⟩ => by
      subst ht; exact ⟨rfl, rfl, rfl, rfl, rfl, _, Or.inl rfl, hLa⟩
  refine fun t3 ht3 ⟨_, hm3, hg3, hd3, hb3, AC, hAC, hL3⟩ hgood => ?_
  have hk3 : KC [] 0 t3 := kcall_congr hk2 hm3 hg3 hd3 hb3
  have hACn : AC.toNat = 100 ∨ AC.toNat = 3000 := by rcases hAC with rfl | rfl <;> decide
  refine (hq_pure hQ (Struct.pure_add_sat guestCtx_code)
    fun vs hvs callee v st5 hm5 hg5 hd5 hb5 hR5 _ => ?_) t3 ht3 rfl hgood
  rw [evs_cons (la_ev hL3 rfl)
    (evs_cons (Struct.ev_wv_word (hL3 (nm "x") (wv [XX.1, XX.2])
      (lk_cons_ne (by decide) (lk_cons_ne (by decide) rfl))) (i := 0)
      (by simp)) evs_nil)] at hvs
  cases hvs
  rw [hR5 _ _ rfl]
  set NEED := Struct.addSatF AC XX.1 with hNEED
  have hk5 : KC [] 0 (setVarHOLFinite (nm "need") (.val (.word NEED)) { st5 with locals := t3.locals }) :=
    kcall_congr hk3 hm5 hg5 hd5 hb5
  have hL5 := la_set (s := { st5 with locals := t3.locals }) hL3 (nm "need") (.val (.word NEED))
  refine hq_charge hfs hPh hQ.toC (a := NEED) hk5 (la_ev hL5 rfl)
    fun st6 hk6 hN1 _ hm6 _ => ?_
  have hNne : NEED ≠ Struct.wMax := by
    intro h
    rw [h] at hN1
    exact absurd hN1 (by decide)
  obtain ⟨hNv, hNlt⟩ := Struct.addSatF_ne_max hNne
  have hNv' : NEED.toNat = AC.toNat + XX.1.toNat := hNv
  have hX0 : XX.1 ≠ Struct.wMax := by
    intro h
    rw [h] at hNlt
    have : (Struct.wMax).toNat = 2 ^ 64 - 1 := by decide
    omega
  obtain ⟨hX32, hXb, hin, hout⟩ := emc2_ok hc32 hcb hX0
  have hS6 : Slots e st6.memory u0.memory := by
    rw [hm6]
    have : Slots e st5.memory u0.memory := by
      intro k hk; rw [hm5, hm3]; exact hS2 k hk
    exact slots_charge this
  have e16 := hS6 16 (by simp)
  have e232 := hS6 232 (by simp)
  have e32 := hS6 32 (by simp)
  have e112 := hS6 112 (by simp)
  have hL6 : LocsAre ({ st6 with locals := (setVarHOLFinite (nm "need") (.val (.word NEED))
      { st5 with locals := t3.locals }).locals } : State σ).locals
      ((nm "need", .val (.word NEED)) :: (nm "access_cost", .val (.word AC)) ::
        (nm "warm", .val (.word W)) :: (nm "x", wv [XX.1, XX.2]) :: xs) := hL5
  have lk4 : ∀ {x : MlS} {v : ValueHOL 64}, xs.lookup x = some v → x ≠ nm "need" →
      x ≠ nm "access_cost" → x ≠ nm "warm" → x ≠ nm "x" →
      ((nm "need", ValueHOL.val (.word NEED)) :: (nm "access_cost", .val (.word AC)) ::
        (nm "warm", .val (.word W)) :: (nm "x", wv [XX.1, XX.2]) :: xs).lookup x = some v :=
    fun hx h1 h2 h3 h4 => lk_cons_ne h1 (lk_cons_ne h2 (lk_cons_ne h3 (lk_cons_ne h4 hx)))
  exact sc_k2 hP hCH hfs hPh ha0 (kcall_loc hk6 _) hL6
    (lk4 lg (by decide) (by decide) (by decide) (by decide))
    (lk_cons_ne (by decide) (lk_cons_ne (by decide) (lk_cons_ne (by decide) rfl)))
    (lk4 l1 (by decide) (by decide) (by decide) (by decide))
    (lk4 l2 (by decide) (by decide) (by decide) (by decide))
    (lk4 l3 (by decide) (by decide) (by decide) (by decide))
    (lk4 l4 (by decide) (by decide) (by decide) (by decide))
    (lk4 l8 (by decide) (by decide) (by decide) (by decide))
    (lk4 l9 (by decide) (by decide) (by decide) (by decide))
    (by show fld st6.memory e 112 = MSG; rw [e112, h112])
    (by show (fld st6.memory e 16).toNat < (fld st6.memory e 232).toNat; rw [e16, e232]; exact hsp)
    (by show fld st6.memory e 32 = cur; rw [e32]) hX32 hXb hout hin (by omega)

/-- **`op_staticcall`'s body**. -/
theorem sc_body (hP : PreHyps σ) (hCH : CallHyps σ) (hfs : fs = (e, c) :: rest)
    (hPh : Phi s0 < 2 ^ 64) (ha0 : act s0 = 1) {u0 : State σ} (hu : KC [] 0 u0) :
    HoareG σ guestCtx (fun t => t = u0) scBody QC := by
  unfold scBody
  have hL0 := la_nil u0.locals
  refine hq_pop hfs ha0 hu fun v1 st1 hk1 hv1 _ _ _ => ?_
  obtain ⟨w1, hw1, rfl⟩ := hv1
  obtain ⟨g0, g1, g2, g3, rfl⟩ := Struct.wv4 hw1
  have hL1 := la_set (s := { st1 with locals := u0.locals }) hL0 (nm "gasv") (wv [g0, g1, g2, g3])
  refine hq_pop hfs ha0 (kcall_congr hk1 rfl rfl rfl rfl) fun v2 st2 hk2 hv2 _ _ _ => ?_
  obtain ⟨w2, hw2, rfl⟩ := hv2
  have hL2 := la_set (s := { st2 with locals := _ }) hL1 (nm "tov") (wv w2)
  refine hq_tab hfs ha0 (fun g h => h) tam_memC tam_fpC callE_tam (tam_spec (σ := σ))
    (kcall_congr hk2 rfl rfl rfl rfl)
    (fun vs hvs Γ1 p1 _ _ _ _ => argsOK_any (by simp [tamSgC]) (by rw [evs_len hvs]; rfl))
    fun vs3 hvs3 callee3 v3 st3 hk3 _ _ hR3 _ => ?_
  obtain ⟨G, hG, rfl⟩ := hR3 (by simp [Good]) v3 rfl
  have hGe : G = e := by
    have := gk_gword hfs (kcall_gk hk2)
    exact Option.some.inj (hG.symm.trans this)
  subst hGe
  have hL3 := la_set (s := { st3 with locals := _ }) hL2 (nm "to") (.val (.word (G + BitVec.ofNat 64 240)))
  refine hq_pop hfs ha0 (kcall_congr hk3 rfl rfl rfl rfl) fun v5 st5 hk5 hv5 _ _ _ => ?_
  obtain ⟨w5, hw5, rfl⟩ := hv5
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hw5
  have hL5 := la_set (s := { st5 with locals := _ }) hL3 (nm "in_start") (wv [a0, a1, a2, a3])
  refine hq_pop hfs ha0 (kcall_congr hk5 rfl rfl rfl rfl) fun v6 st6 hk6 hv6 _ _ _ => ?_
  obtain ⟨w6, hw6, rfl⟩ := hv6
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hw6
  have hL6 := la_set (s := { st6 with locals := _ }) hL5 (nm "in_size") (wv [b0, b1, b2, b3])
  refine hq_pop hfs ha0 (kcall_congr hk6 rfl rfl rfl rfl) fun v7 st7 hk7 hv7 _ _ _ => ?_
  obtain ⟨w7, hw7, rfl⟩ := hv7
  obtain ⟨o0, o1, o2, o3, rfl⟩ := Struct.wv4 hw7
  have hL7 := la_set (s := { st7 with locals := _ }) hL6 (nm "out_start") (wv [o0, o1, o2, o3])
  refine hq_pop hfs ha0 (kcall_congr hk7 rfl rfl rfl rfl) fun v8 st8 hk8 hv8 hsp8 _ _ => ?_
  obtain ⟨w8, hw8, rfl⟩ := hv8
  obtain ⟨z0, z1, z2, z3, rfl⟩ := Struct.wv4 hw8
  have hL8 := la_set (s := { st8 with locals := _ }) hL7 (nm "out_size") (wv [z0, z1, z2, z3])
  have hk8' := kcall_congr (t := setVarHOLFinite (nm "out_size") (wv [z0, z1, z2, z3])
    { st8 with locals := (setVarHOLFinite (nm "out_start") (wv [o0, o1, o2, o3]) { st7 with locals :=
      (setVarHOLFinite (nm "in_size") (wv [b0, b1, b2, b3]) { st6 with locals :=
      (setVarHOLFinite (nm "in_start") (wv [a0, a1, a2, a3]) { st5 with locals :=
      (setVarHOLFinite (nm "to") (.val (.word (G + BitVec.ofNat 64 240))) { st3 with locals :=
      (setVarHOLFinite (nm "tov") (wv w2) { st2 with locals :=
      (setVarHOLFinite (nm "gasv") (wv [g0, g1, g2, g3]) { st1 with locals := u0.locals }).locals
      }).locals }).locals }).locals }).locals }).locals }) hk8 rfl rfl rfl rfl
  -- `msg = EV 112`
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  obtain ⟨hv', -⟩ := ev_gLoad_eq (g := "ev") (k := 112) (gk_gword hfs (kcall_gk hk8')) hv
  subst hv'
  refine hoareG_conseq (Q := QCall Γ0 s0) ?_ (fun _ _ h => h) (fun r t _ _ hq => qcall_loc hq _)
  exact sc_k1 hP hCH hfs hPh ha0 (kcall_congr hk8' rfl rfl rfl rfl) (la_set hL8 _ _)
    rfl rfl rfl rfl rfl rfl rfl rfl hsp8

end proof

/-- **`op_staticcall`'s bounded step spec**, from `PreHyps` and `CallHyps`. -/
theorem j_op_staticcall_of (hP : PreHyps σ) (hCH : CallHyps σ) :
    OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_staticcall") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_staticcall) :=
    declPair_valid (List.getElem_mem (n := 606) (by decide)) ⟨_, rfl⟩
  refine opStepB_qcall hcode ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP0 hk0
  haveI : Fact (ChainOf s0 fs) := by
    obtain ⟨⟨_, _, _, _, hchc, _⟩, _⟩ := id hk0
    exact ⟨hchc.chain⟩
  have ha0 : act s0 = 1 := by unfold act; rw [if_pos hrdy]
  rw [scBody_eq]
  exact sc_body hP hCH hfs hP0 ha0 (kcall_of_gk hk0)

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.hq_gcD
#print axioms InitECandidate.Solver.MemSafe.Calls.sc_gc
#print axioms InitECandidate.Solver.MemSafe.Calls.sc_k3
#print axioms InitECandidate.Solver.MemSafe.Calls.sc_k2
#print axioms InitECandidate.Solver.MemSafe.Calls.sc_k1
#print axioms InitECandidate.Solver.MemSafe.Calls.sc_body
#print axioms InitECandidate.Solver.MemSafe.Calls.j_op_staticcall_of
