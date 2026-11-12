import InitECandidate.Solver.MemSafe.Ops2.Return
import InitECandidate.Solver.MemSafe.Ops2.Calldataload
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

def kcCostE : ExpHOL 64 := .op .add [cw 30, .panop .mul [cw 6, lv (nm "w")]]

def kcBody : ProgHOL 64 :=
  .decCall (nm "start") (shK 4) (nm "stack_pop") []
  (.decCall (nm "size") (shK 4) (nm "stack_pop") []
  (.decCall (nm "n") .one (nm "sat_word") [lv (nm "size")]
  (.decCall (nm "w") .one (nm "words_of") [lv (nm "n")]
  (.decCall (nm "x") (shK 2) (nm "extend_memory_cost1") [lv (nm "start"), lv (nm "size")]
  (.decCall (nm "cost") .one (nm "add_sat") [kcCostE, Struct.rf 0 "x"]
  (.seq (callD (nm "charge_gas") [lv (nm "cost")])
  (.seq (callD (nm "extend_memory") [Struct.rf 1 "x"])
  (.decCall (nm "mark") .one (nm "heap_mark") []
  (.decCall (nm "out") .one (nm "alloc") [cw 32]
  (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
  (.seq (callD (nm "keccak256") [.op .add [Struct.evL 24, lv (nm "s")], lv (nm "n"), lv (nm "out")])
  (.decCall (nm "v") (shK 4) (nm "u256_from_be") [lv (nm "out"), cw 32]
  (.seq (callD (nm "heap_release") [lv (nm "mark")]) cdTail)))))))))))))

theorem kcBody_eq : (declPair Guest.Software.guestFn_op_keccak).2.2 = kcBody := by
  conv => lhs; cbv
  rfl


theorem kc_cdTail_gc : gc gE true cdTail = some true := cdTail_gc

theorem satw_start_cl' : callCl gE false (nm "sat_word") [lv (nm "start")] = some false := by
  decide +kernel

def kcSg : Sig := WaveHelpers.sigKeccak 32 false
theorem kc_mem : (nm "keccak256", kcSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem kc_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "keccak256") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
def swSg : Sig := ⟨[.any], [], [], false⟩
theorem sw_mem : (nm "sat_word", swSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem sw_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "sat_word") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

theorem argsOK_kc {Γ : Gam} {p : Ptrs} {u : State σ} {a b c : ExpHOL 64}
    {vs : List (ValueHOL 64)} (hvs : evs u [a, b, c] = some vs) {q : BitVec 64}
    (h2 : ev u c = some (.val (.word q))) (hbuf : BufOK guestC Γ p q.toNat 32) :
    ArgsOK guestC Γ p kcSg.params vs := by
  obtain ⟨v0, vs0, rfl, hv0, h0⟩ := evs_cons_inv hvs
  obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv h0
  obtain ⟨v2, vs2, rfl, hv2, h2'⟩ := evs_cons_inv h1
  rw [evs_zero h2']
  rw [h2] at hv2
  simp only [Option.some.injEq] at hv2
  subst hv2
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i
  · simp [kcSg, WaveHelpers.sigKeccak] at hpt; subst hpt; trivial
  · simp [kcSg, WaveHelpers.sigKeccak] at hpt; subst hpt; trivial
  · simp [kcSg, WaveHelpers.sigKeccak] at hpt hv; subst hpt; subst hv; exact ⟨q, rfl, hbuf⟩
  · simp [kcSg, WaveHelpers.sigKeccak] at hpt

theorem ev_step {y x : MlS} {v : ValueHOL 64} {t u st : State σ}
    (hu : t = setVarHOLFinite y v { st with locals := u.locals }) (h : y ≠ x) :
    ev t (lv x) = ev u (lv x) := by
  subst hu; rw [Struct.ev_lv_set_ne _ _ h]; exact ev_lv_locals rfl _

theorem ev_self {y : MlS} {v : ValueHOL 64} {t u st : State σ}
    (hu : t = setVarHOLFinite y v { st with locals := u.locals }) :
    ev t (lv y) = some v := by
  subst hu; exact Struct.ev_lv_set _ _ _

theorem lk_step {y x : MlS} {v : ValueHOL 64} {t u st : State σ}
    (hu : t = setVarHOLFinite y v { st with locals := u.locals }) (h : y ≠ x) :
    t.locals.lookup x = u.locals.lookup x := by
  subst hu; exact lk_set_ne _ _ h

theorem lk_self {y : MlS} {v : ValueHOL 64} {t u st : State σ}
    (hu : t = setVarHOLFinite y v { st with locals := u.locals }) :
    t.locals.lookup y = some v := by
  subst hu; exact lk_set_self _ _ _

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs
local notation "WJ" => WinI (Hooks.guestHooksR (σ := σ)) Γ0 s0 p0 fs

theorem kc_kj_step {d : Nat} {y : MlS} {v : ValueHOL 64} {t u st : State σ}
    (hu : t = setVarHOLFinite y v { st with locals := u.locals }) (hK : KJ d st) : KJ d t := by
  subst hu; exact kOK_KJ.congr _ _ _ hK rfl rfl rfl rfl

/-- The window part, from `KJ 1`. -/
theorem kc_win (hfs : fs = (e, c) :: rest) {t : State σ} (hK : KJ 1 t) :
    HoareG σ guestCtx (fun s => s = t)
      (.decCall (nm "mark") .one (nm "heap_mark") []
  (.decCall (nm "out") .one (nm "alloc") [cw 32]
  (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
  (.seq (callD (nm "keccak256") [.op .add [Struct.evL 24, lv (nm "s")], lv (nm "n"), lv (nm "out")])
  (.decCall (nm "v") (shK 4) (nm "u256_from_be") [lv (nm "out"), cw 32]
  (.seq (callD (nm "heap_release") [lv (nm "mark")]) cdTail))))))
      (GQ (KJ) true) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine hoareG_winMark hfs hK fun st4 m Γ1 pm hW4 => ?_
  refine hoareG_winAlloc hfs hW4 (ev_cw _ 32) fun st5 q pc5 hW5 hq8 hbuf => ?_
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
    fun u hu vs hvs callee sv st6 hm hg hd hbe hRv hsh => ?_
  have hW6 := winI_congr hF.hooks (hu ▸ hW5) hm hg hd hbe
  have hW6' := winI_congr hF.hooks hW6
    (t := setVarHOLFinite (nm "s") sv { st6 with locals := u.locals }) rfl rfl rfl rfl
  refine hoareG_winCall hfs rfl rfl kc_mem kc_fp hW6' (fun vs' hvs' => ?_) fun t7 hl7 ⟨Γ7, p7, hW7⟩ => ?_
  · refine argsOK_kc hvs' (q := q) ?_ (by simpa using hbuf)
    rw [Struct.ev_lv_set_ne _ _ (by decide), ev_lv_locals rfl, hu]
    exact Struct.ev_lv_set _ _ _
  refine hoareG_winDec hfs rfl rfl ub_mem ub_fp hW7
    (fun vs hvs => argsOK_any (by simp [ubSg]) (by rw [evs_len hvs]; rfl))
    fun t8 hl8 v8 hsh8 ⟨Γ8, p8, hW8⟩ => ?_
  have hmark : ev (setVarHOLFinite (nm "v") v8 t8) (lv (nm "mark")) = some (.val (.word m)) := by
    rw [Struct.ev_lv_set_ne _ _ (by decide), ev_lv_locals (hl8.trans hl7),
      ev_step (y := nm "s") (x := nm "mark") (v := sv) (u := u) (st := st6) rfl (by decide),
      ev_step hu (by decide)]
    exact Struct.ev_lv_set _ _ _
  refine hoareG_winRel hfs hW8 hmark fun t9 hl9 hk9 => ?_
  exact hoareG_pt fun t10 h10 => by
    subst h10
    exact gc_sound kOK_KJ (callSem_gE hfs) _ true true cdTail_gc _ hk9

theorem wordsOfF_lt (N : BitVec 64) : (Struct.wordsOfF N).toNat < 2 ^ 59 := by
  unfold Struct.wordsOfF
  rw [BitVec.toNat_ushiftRight]
  have := (Struct.ceil32F N).isLt
  simp only [Nat.shiftRight_eq_div_pow]
  omega

theorem kc_cost_pos (W : BitVec 64) (hW : W.toNat < 2 ^ 59) (X : BitVec 64) :
    1 ≤ (Struct.addSatF (BitVec.ofNat 64 30 + BitVec.ofNat 64 6 * W) X).toNat := by
  have h1 := Struct.addSatF_ge (BitVec.ofNat 64 30 + BitVec.ofNat 64 6 * W) X
  rw [BitVec.toNat_add, BitVec.toNat_mul] at h1
  simp only [BitVec.toNat_ofNat] at h1
  have h6 : 6 % 2 ^ 64 = 6 := by norm_num
  have h30 : 30 % 2 ^ 64 = 30 := by norm_num
  rw [h6, h30, Nat.mod_eq_of_lt (a := 6 * W.toNat) (by omega), Nat.mod_eq_of_lt (by omega)] at h1
  omega

/-- The shared core. -/
theorem kc_main (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) (hk0 : KJ 0 s0) :
    HoareG σ guestCtx (fun t => t = s0) kcBody (GQ (KJ) true) := by
  unfold kcBody
  refine hoareG_gkDec hfs pop_cl hk0 fun v1 st1 hk1 hsh1 => ?_
  obtain ⟨ws1, hws1, rfl⟩ := eq_wv_of_shapeEq' hsh1
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws1
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl)
    fun v2 st2 hk2 hsh2 => ?_
  obtain ⟨ws2, hws2, rfl⟩ := eq_wv_of_shapeEq' hsh2
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hws2
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
    fun u hu vs hvs callee nv st3 hm hg hd hbe hRv hsh3 => ?_
  have hKu : KJ 0 u := by rw [hu]; exact kOK_KJ.congr _ _ _ hk2 rfl rfl rfl rfl
  have hsize : ev u (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := by
    rw [hu]; exact Struct.ev_lv_set _ _ _
  rw [evs_cons hsize evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hnv := hRv b0 b1 b2 b3 rfl
  subst hnv
  have hKs3 : KJ 0 st3 := kOK_KJ.congr _ _ _ hKu hm hg hd hbe
  refine hoareG_kPure (Struct.pure_words_of guestCtx_code)
    fun u2 hu2 vs2 hvs2 callee2 wv2 st4 hm2 hg2 hd2 hbe2 hRv2 hsh4 => ?_
  have hKu2 : KJ 0 u2 := kc_kj_step hu2 hKs3
  have hn : ev u2 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := ev_self hu2
  rw [evs_cons hn evs_nil] at hvs2
  simp only [Option.some.injEq] at hvs2; subst hvs2
  have hwv := hRv2 _ rfl
  subst hwv
  have hKs4 : KJ 0 st4 := kOK_KJ.congr _ _ _ hKu2 hm2 hg2 hd2 hbe2
  refine hoareG_kPure (Struct.pure_extend_memory_cost1 guestCtx_code)
    fun u3 hu3 vs3 hvs3 callee3 xv st5 hm3 hg3 hd3 hbe3 hRv3 hsh5 => ?_
  have hKu3 : KJ 0 u3 := kc_kj_step hu3 hKs4
  have hstart : ev u3 (lv (nm "start")) = some (wv [a0, a1, a2, a3]) := by
    rw [ev_step hu3 (by decide), ev_step hu2 (by decide), ev_step hu (by decide)]
    exact Struct.ev_lv_set _ _ _
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
  have hKs5 : KJ 0 st5 := kOK_KJ.congr _ _ _ hKu3 hm3 hg3 hd3 hbe3
  refine hoareG_kPure (Struct.pure_add_sat guestCtx_code)
    fun u4 hu4 vs4 hvs4 callee4 cv st6 hm4 hg4 hd4 hbe4 hRv4 hsh6 => ?_
  have hKu4 : KJ 0 u4 := kc_kj_step hu4 hKs5
  have hw : ev u4 (lv (nm "w")) = some (.val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) := by
    rw [ev_step hu4 (by decide)]; exact ev_self hu3
  have hx0 : ev u4 (Struct.rf 0 "x") = some (.val (.word X1)) :=
    Struct.ev_wv_word (lk_self hu4) (i := 0) (by simp)
  have hcost : ev u4 kcCostE = some (.val (.word (BitVec.ofNat 64 30 + BitVec.ofNat 64 6 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) :=
    ev_add2 (ev_cw _ 30) (ev_mul2 (ev_cw _ 6) hw)
  rw [evs_cons hcost (evs_cons hx0 evs_nil)] at hvs4
  simp only [Option.some.injEq] at hvs4; subst hvs4
  have hcv := hRv4 _ _ rfl
  subst hcv
  have hKs6 : KJ 0 st6 := kOK_KJ.congr _ _ _ hKu4 hm4 hg4 hd4 hbe4
  have hmem6 : st6.memory = (callEntryStateHOLFinite u3 callee3).memory :=
    hm4.trans (by rw [hu4]; exact hm3)
  obtain ⟨hc32, hcb⟩ := gk_memlen hfs hKs6
  have hmem32 : (rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32)).toNat =
      (fld st6.memory e 32).toNat := by rw [hmem6]; rfl
  refine hoareG_gkChgExt hfs hP (d := 0)
    (a := Struct.addSatF (BitVec.ofNat 64 30 + BitVec.ofNat 64 6 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1) (X := X2)
    (u0 := setVarHOLFinite (nm "cost") (.val (.word (Struct.addSatF (BitVec.ofNat 64 30 +
      BitVec.ofNat 64 6 * Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1)))
      { st6 with locals := u4.locals })
    (by exact kOK_KJ.congr _ _ _ hKs6 rfl rfl rfl rfl) (e1 := lv (nm "cost"))
    (e2 := Struct.rf 1 "x") (fun t ht => ?_) (fun t ht => ?_) (fun ha1 => ?_)
    fun t ht hKt ha1 hale hlen => ?_
  · rw [ev_lv_locals ht]; exact Struct.ev_lv_set _ _ _
  · have hl : t.locals.lookup (nm "x") = some (wv [X1, X2]) := by
      rw [ht]
      show (setVarHOLFinite (nm "cost") _ _).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]
      exact lk_self (t := u4) hu4
    exact Struct.ev_wv_word hl (i := 1) (by simp)
  · have hne : X1 ≠ Struct.wMax := by
      intro h
      rw [h, Struct.addSatF_max, Struct.wMax_toNat] at ha1; omega
    have hem : (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3
        (rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32))).1 ≠ Struct.wMax := by
      rw [hCX]; exact hne
    obtain ⟨h32, hlt, -⟩ := Struct.emc1_ok
      (cur := rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32))
      (by rw [hmem32]; exact hc32) (by rw [hmem32]; exact hcb) hem
    rw [hCX] at h32 hlt
    simp only at h32 hlt
    refine ⟨h32, ?_⟩
    show (fld st6.memory e 32).toNat + _ ≤ _
    have hlt' : (fld st6.memory e 32).toNat + X2.toNat < 2 ^ 37 := by
      rw [← hmem32]; exact hlt
    omega
  · have hK1 : KJ 1 t := kOK_KJ.mono _ _ _ hKt (by
      have := kc_cost_pos _ (wordsOfF_lt (Struct.satWordF b0 b1 b2 b3)) X1
      omega)
    exact kc_win hfs hK1

end steps
/-- **`op_keccak`'s bounded step spec.** -/
theorem j_op_keccak : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_keccak") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_keccak) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 501) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [kcBody_eq]
  exact kc_main hfs hP hk0

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_keccak
