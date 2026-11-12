import InitECandidate.Solver.MemSafe.Stor3.SdCalls
import InitECandidate.Solver.MemSafe.Stor3.Sload

set_option autoImplicit false

/-!
# `op_selfdestruct`'s step spec (sonnet-store3)
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec.Mpt.Leaves (ev_load1_inv' ev_add2_inv')

variable {σ : Type}

/-- **Open hypothesis**: the `GK` step of `emit_transfer_log(x, y, z)` (three `any` parameters; the
summary `Pre.sumSpecA_emit_transfer_log_guestR` with `EtlPre` / `LaPW`), status-preserving. -/
def EtlStep (σ : Type) : Prop :=
  ∀ (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame) (e c : BitVec 64) (rest : List Frame),
    fs = (e, c) :: rest → ∀ (x y z : ExpHOL 64) (u0 : State σ),
      GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false) u0 →
      HoareG σ guestCtx (fun t => t = u0) (callD (nm "emit_transfer_log") [x, y, z])
        (HL (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs) false u0.locals)

theorem ao_buf1 {u : State σ} {x : MlS} {T : BitVec 64}
    (hT : u.locals.lookup x = some (.val (.word T))) {vs : List (ValueHOL 64)}
    (hvs : evs u [lv x] = some vs) {Γ1 : Gam} {p1 : Ptrs} (hB : BufOK guestC Γ1 p1 T.toNat 20) :
    ArgsOK guestC Γ1 p1 [.buf 20] vs := by
  have h1 : evs u [lv x] = some [.val (.word T)] :=
    evs_cons (by rw [ev_lv]; exact hT) evs_nil
  rw [h1] at hvs
  cases hvs
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, hB⟩
  · simp at hpt

theorem ao_mv {u : State σ} {x y : MlS} {e3 : ExpHOL 64} {T1 T2 : BitVec 64}
    (h1 : u.locals.lookup x = some (.val (.word T1))) (h2 : u.locals.lookup y = some (.val (.word T2)))
    {vs : List (ValueHOL 64)} (hvs : evs u [lv x, lv y, e3] = some vs) {Γ1 : Gam} {p1 : Ptrs}
    (hB1 : BufOK guestC Γ1 p1 T1.toNat 20) (hB2 : BufOK guestC Γ1 p1 T2.toNat 20) :
    ArgsOK guestC Γ1 p1 [.buf 20, .buf 20, .any] vs := by
  obtain ⟨v1, vs1, rfl, hv1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, hv2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, vs3, rfl, hv3, hr3⟩ := evs_cons_inv hr2
  rw [evs_zero hr3]
  rw [ev_lv, h1, Option.some.injEq] at hv1
  rw [ev_lv, h2, Option.some.injEq] at hv2
  subst hv1 hv2
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, hB1⟩
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, hB2⟩
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    trivial
  · simp at hpt

def waSg : Sig := ⟨[.buf 20], [], [], true⟩
def waE : GEnv := ⟨[], [nm "warm_address"], [Hooks.gJn]⟩
def iaE : GEnv := ⟨[], [nm "is_account_alive"], [Hooks.gJn]⟩
def meSg : Sig := ⟨[.buf 20, .buf 20, .any], [], [nm "journal_n"], true⟩
def meCaps : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩,
   ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩,
   ⟨nm "journal", 9, [], true⟩, ⟨nm "sk_buf", 24, [], false⟩]
def meE : GEnv := ⟨[], [nm "move_ether"], [Hooks.gJn]⟩
def hsE : GEnv := ⟨[], [nm "htab_set"], [Hooks.gJn]⟩

theorem wa_mem : (nm "warm_address", waSg, Band3.rpsrCaps) ∈ ShardsJL.tab26 := by decide +kernel
theorem ia_mem : (nm "is_account_alive", waSg, Band3.rpsrCaps) ∈ ShardsJL.tab26 := by decide +kernel
theorem me_mem : (nm "move_ether", meSg, meCaps) ∈ ShardsJL.tab26 := by decide +kernel
theorem hs_mem : (nm "htab_set", HtabEntries.setSig tHTs20, HtabEntries.capsHT tHTs20) ∈
    ShardsJL.tab26 := by decide +kernel
theorem wa_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "warm_address") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem ia_fp' : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "is_account_alive") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem me_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "move_ether") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem hs_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "htab_set") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem waE_ok : PlainOKB waE (nm "warm_address") waSg Band3.rpsrCaps 1 := by decide +kernel
theorem iaE_ok : PlainOKB iaE (nm "is_account_alive") waSg Band3.rpsrCaps 1 := by decide +kernel
theorem meE_ok : PlainOKB meE (nm "move_ether") meSg meCaps 3 := by decide +kernel
theorem hsE_ok : PlainOKB hsE (nm "htab_set") (HtabEntries.setSig tHTs20)
    (HtabEntries.capsHT tHTs20) 3 := by decide +kernel

theorem s3_rns : callCl s3E false (nm "require_not_static") [] = some false := by decide +kernel
theorem s3_tam : callCl s3E false (nm "to_address_masked") [lv (nm "bv")] = some false := by
  decide +kernel
theorem s3_iwa : callCl s3E false (nm "is_warm_address") [lv (nm "beneficiary")] = some false := by
  decide +kernel
theorem s3_obz : callCl s3E true (nm "u256_is_zero") [balE] = some true := by decide +kernel
theorem s3_chgaw : callCl s3E true (nm "charge_gas") [lv (nm "aw")] = some true := by decide +kernel
theorem s3_memeq : callCl s3E true (nm "memeq") [lv (nm "beneficiary"), lv (nm "originator"), cw 20] =
    some true := by decide +kernel
theorem s3_has : callCl s3E true (nm "htab_has")
    [.load .one (.op .add [.var .global (nm "ts"), cw 56]), lv (nm "originator")] = some true := by
  decide +kernel

theorem ao_set {Γ : Gam} {p : Ptrs} {T0 K w : BitVec 64} (hT : Fits Γ (.ptr tHTs20) T0)
    (hK : BufOK guestC Γ p K.toNat 20) :
    ArgsOK guestC Γ p (HtabEntries.setSig tHTs20).params
      [.val (.word T0), .val (.word K), .val (.word w)] := by
  have hv : HtabEntries.valPT tHTs20 = .any := by decide
  have hk : htKL tHTs20 = 20 := by decide
  refine ⟨rfl, fun i pt v hpt hv' => ?_⟩
  rcases i with _ | _ | _ | i
  · simp only [HtabEntries.setSig, List.getElem?_cons_zero, Option.some.injEq] at hpt hv'
    subst hpt hv'; exact ⟨T0, rfl, hT⟩
  · simp only [HtabEntries.setSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
      Option.some.injEq] at hpt hv'
    subst hpt hv'; exact ⟨K, rfl, by rw [hk]; exact hK⟩
  · simp only [HtabEntries.setSig, List.getElem?_cons_succ, List.getElem?_cons_zero,
      Option.some.injEq] at hpt hv'
    subst hpt hv'; rw [hv]; trivial
  · simp [HtabEntries.setSig] at hpt

/-- The arguments of `htab_set(lds 1 (ev + 136), originator, 1)` fit. -/
theorem ao_delset {u : State σ} {Γ1 : Gam} {p1 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) (hp : ptrsOf u = some p1)
    (hE : ChainE GP GR Γ1 u fs) (he : gword u nmEv = some e) {T : BitVec 64}
    (hT : u.locals.lookup (nm "originator") = some (.val (.word T)))
    (hB : BufOK guestC Γ1 p1 T.toNat 20) {vs : List (ValueHOL 64)}
    (hvs : evs u [.load .one (.op .add [.var .global (nm "ev"), cw 136]), lv (nm "originator"),
      cw 1] = some vs) :
    ArgsOK guestC Γ1 p1 (HtabEntries.setSig tHTs20).params vs := by
  obtain ⟨v1, vs1, rfl, hv1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, hv2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, vs3, rfl, hv3, hr3⟩ := evs_cons_inv hr2
  rw [evs_zero hr3]
  rw [ev_lv, hT, Option.some.injEq] at hv2
  subst hv2
  rw [ev_cw, Option.some.injEq] at hv3
  subst hv3
  obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' hv1
  obtain ⟨a, b, ha, hb, hab⟩ := ev_add2_inv' hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hab
  subst hab
  have hga : gword u nmEv = some a := by
    unfold gword; rw [show u.globals.lookup (nm "ev") = some (.val (.word a)) from ha]
  rw [he] at hga
  have hae : e = a := Option.some.inj hga
  subst hae
  rw [ev_cw, Option.some.injEq] at hb
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hb
  subst hb
  have hmem : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨-, -, -, ⟨D, hD, hDb, hDt⟩, -⟩ := hE.1 p1 hp _ hmem
  refine ao_set ⟨D, hD, ?_, hDt⟩ hB
  rw [hDb]; rfl


def LkBO (G T : BitVec 64) (l : Locs) : Prop :=
  l.lookup (nm "beneficiary") = some (.val (.word (G + BitVec.ofNat 64 240))) ∧
  l.lookup (nm "originator") = some (.val (.word T))

theorem lkBO_set {G T : BitVec 64} {n : MlS} (h1 : n ≠ nm "beneficiary") (h2 : n ≠ nm "originator")
    (v : ValueHOL 64) (t : State σ) (h : LkBO G T t.locals) : LkBO G T (setVarHOLFinite n v t).locals :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2⟩

theorem lkBO_loc {G T : BitVec 64} {t u : State σ} (hl : t.locals = u.locals)
    (h : LkBO G T u.locals) : LkBO G T t.locals := by rw [hl]; exact h

/-- **`op_selfdestruct`'s step spec** at `guestHooksR` (the `emit_transfer_log` step is `EtlStep`). -/
theorem j_op_selfdestruct (hEtl : EtlStep σ) :
    OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_selfdestruct") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_selfdestruct) :=
    declPair_valid (List.getElem_mem (n := 570) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [sdBody_eq]
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_s3E (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  unfold sdBody
  refine hl_seq_last (b1 := false) (hl_call hK hC s3_rns hk0) ?_
  intro u1 hu1 _
  refine hl_decCall hK hC s3_pop hu1 ?_
  intro t1 ht1 hloc1 bv hsh1
  have hS1 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false)
      (setVarHOLFinite (nm "bv") bv t1) := kok_loc hK ht1 _
  refine hl_decCallV hK hC tam_spec s3_tam hS1 ?_
  intro t2 ht2 hloc2 v2 hsh2 hRv
  obtain ⟨vs, callee, st, hvs, hR⟩ := hRv
  obtain ⟨G, hG, rfl⟩ := hR (by simp [Good]) v2 rfl
  have hGe : gword (setVarHOLFinite (nm "bv") bv t1) nmEv = some e := gk_gword hfs hS1
  have hGG : G = e := Option.some.inj (hG.symm.trans hGe)
  subst hGG
  have hS2 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false)
      (setVarHOLFinite (nm "beneficiary") (.val (.word (G + BitVec.ofNat 64 240))) t2) :=
    kok_loc hK ht2 _
  refine hl_decCall hK hC s3_iwa hS2 ?_
  intro t3 ht3 hloc3 warmv hsh3
  refine hl_dec hK ?_
  intro g4 hg4 hsh4
  rw [ev_cw] at hg4
  simp only [Option.some.injEq] at hg4
  subst hg4
  refine hoareG_seq (R := fun ro t => ro = none ∧
      GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false) t ∧
      (∃ g, t.locals.lookup (nm "gas_cost") = some (.val (.word g)) ∧ 1 ≤ g.toNat) ∧
      ∀ x, x ≠ nm "gas_cost" → t.locals.lookup x =
        (setVarHOLFinite (nm "gas_cost") (.val (.word (BitVec.ofNat 64 5000)))
          (setVarHOLFinite (nm "warm") warmv t3)).locals.lookup x)
    (hl_iteGas hK (kok_loc hK ht3 _) (lk_set_self _ _ _)) (fun r t _ hr _ h => absurd h.1 hr)
    (hoareG_pt fun u hu => ?_)
  obtain ⟨hKu, ⟨g, hgl, hg1⟩, hother⟩ := hu.2
  refine hl_seq_last (b1 := true) (hl_chargeDyn hF charge_fp hfs hKu (fun a ha => ?_)) ?_
  · rw [ev_lv, hgl] at ha
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha
    subst ha; exact hg1
  intro u7 hu7 hlu7
  have lB7 : u7.locals.lookup (nm "beneficiary") =
      some (.val (.word (G + BitVec.ofNat 64 240))) := by
    rw [hlu7, hother _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), hloc3]
    exact lk_set_self _ _ _
  refine hl_seq_last (b1 := true) (hl_ite' (hl_callA wa_mem wa_fp hfs waE_ok (fun g h => h) hu7
    (fun vs hvs Γ1 p1 hrun hch _ => ao_buf1 lB7 hvs (addr_bufOK hfs hrun hch))) (hl_skip hu7)) ?_
  intro u8 hu8 hlu8
  refine hl_dec hK ?_
  intro v9 hv9 hsh9
  obtain ⟨Γd, pd, T, rfl, hk0', hGd, hBuf, hback, -⟩ := gk_rebase_tgt hF.hooks hfs hu8 hv9
  refine hoareG_conseq (P := fun s => s = setVarHOLFinite (nm "originator") (.val (.word T)) u8)
    (Q := GQ (K2 (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u8 pd fs)) true) ?_
    (fun _ _ h => h) (fun r t _ _ hq => gq_K2 hK (fun d t h => hback d t h) hq)
  have hK' := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γd)
    (s0 := u8) (p0 := pd) (fs := fs)
  have hK2 := kOK_K2 hK'
  have hC' := callSem_s3E (σ := σ) (Γ0 := Γd) (s0 := u8) (p0 := pd) hfs
  have hC2 := callSem_K2 hK' hC'
  have LK9 : LkBO G T (setVarHOLFinite (nm "originator") (.val (.word T)) u8).locals := by
    refine ⟨?_, lk_set_self _ _ _⟩
    rw [lk_set_ne _ _ (by decide), hlu8]
    exact lB7
  have hu9 : K2 (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u8 pd fs) (bd true)
      (setVarHOLFinite (nm "originator") (.val (.word T)) u8) := K2_mk (kok_loc hK' hk0' _)
  -- alive = is_account_alive(beneficiary)
  refine hl_decCallS2 (E := iaE) (args := [lv (nm "beneficiary")]) (tabJL_guestR _ _ _ ia_mem) ia_fp' hfs iaE_ok (fun g h => h) hu9
    (fun vs hvs Γ1 p1 hrun hch _ => ao_buf1 LK9.1 hvs (addr_bufOK hfs hrun hch)) ?_
  intro t4 ht4 hloc4 alive hsh4
  have LK4 : LkBO G T (setVarHOLFinite (nm "alive") alive t4).locals :=
    lkBO_set (by decide) (by decide) _ _ (lkBO_loc hloc4 LK9)
  -- oa = get_account(originator)
  refine hl_decCallS2 (E := opsBE) (args := [lv (nm "originator")]) (tabJL_guestR _ _ _ ga_mem) ga_fp hfs opsBE_ga (fun g h => h)
    (kok_loc hK2 ht4 _)
    (fun vs hvs Γ1 p1 hrun hch _ => ao_buf1 LK4.2 hvs (bufOK_runT hGd hrun hBuf)) ?_
  intro t5 ht5 hloc5 oa hsh5
  have LK5 : LkBO G T (setVarHOLFinite (nm "oa") oa t5).locals :=
    lkBO_set (by decide) (by decide) _ _ (lkBO_loc hloc5 LK4)
  -- obz = u256_is_zero(bal)
  refine hl_decCall hK2 hC2 s3_obz (kok_loc hK2 ht5 _) ?_
  intro t6 ht6 hloc6 obz hsh6
  have LK6 : LkBO G T (setVarHOLFinite (nm "obz") obz t6).locals :=
    lkBO_set (by decide) (by decide) _ _ (lkBO_loc hloc6 LK5)
  refine hl_dec hK2 ?_
  intro sg0 hsg0 hshsg
  refine hl_dec hK2 ?_
  intro aw0 haw0 hshaw
  have LKb : LkBO G T (setVarHOLFinite (nm "aw") aw0
      (setVarHOLFinite (nm "state_gas") sg0 (setVarHOLFinite (nm "obz") obz t6))).locals :=
    lkBO_set (by decide) (by decide) _ _ (lkBO_set (by decide) (by decide) _ _ LK6)
  refine hoareG_seq (R := fun ro t => ro = none ∧
      K2 (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u8 pd fs) (bd true) t ∧
      ∀ x, x ≠ nm "state_gas" → x ≠ nm "aw" → t.locals.lookup x =
        (setVarHOLFinite (nm "aw") aw0 (setVarHOLFinite (nm "state_gas") sg0
          (setVarHOLFinite (nm "obz") obz t6))).locals.lookup x)
    (hl_iteSa hK2 (kok_loc hK2 ht6 _) _) (fun r t _ hr _ h => absurd h.1 hr)
    (hoareG_pt fun u hu => ?_)
  obtain ⟨hKu, hothers⟩ := hu.2
  have LKu : LkBO G T u.locals :=
    ⟨by rw [hothers _ (by decide) (by decide)]; exact LKb.1,
     by rw [hothers _ (by decide) (by decide)]; exact LKb.2⟩
  refine hl_seq_last (b1 := true) (hl_call hK2 hC2 s3_chgaw hKu) ?_
  intro u10 hu10 hlu10
  have LK10 : LkBO G T u10.locals := lkBO_loc hlu10 LKu
  refine hl_seq_last (b1 := true) (hl_K2 hK' (hl_csg hfs (K2_of hu10))) ?_
  intro u11 hu11 hlu11
  have LK11 : LkBO G T u11.locals := lkBO_loc hlu11 LK10
  refine hoareG_seq (R := fun ro t =>
      (ro = none → K2 (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u8 pd fs) (bd true) t ∧
        ∃ v, ev t (lv (nm "oa")) = some v ∧
          ∀ y, y ≠ nm "oa" → t.locals.lookup y = u11.locals.lookup y) ∧
      ∀ r, ro = some r → ¬ Abortive r →
        K2 (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u8 pd fs) (rbd r) t)
    (hl_callAsgS2 (E := opsBE) (args := [lv (nm "originator")]) (tabJL_guestR _ _ _ ga_mem) ga_fp
      hfs opsBE_ga (fun g h => h) hu11
      (fun vs hvs Γ1 p1 hrun hch _ => ao_buf1 LK11.2 hvs (bufOK_runT hGd hrun hBuf)))
    (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩) (hoareG_pt fun u hu => ?_)
  obtain ⟨hKu12, voa, hvoa, hy⟩ := hu.1 rfl
  have LK12 : LkBO G T u.locals :=
    ⟨by rw [hy _ (by decide)]; exact LK11.1, by rw [hy _ (by decide)]; exact LK11.2⟩
  refine hl_dec hK2 ?_
  intro vb hvb hshb
  have LKb2 : LkBO G T (setVarHOLFinite (nm "bal") vb u).locals :=
    lkBO_set (by decide) (by decide) _ _ LK12
  have hub : K2 (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u8 pd fs) (bd true)
      (setVarHOLFinite (nm "bal") vb u) := kok_loc hK2 hKu12 _
  refine hl_seq_last (b1 := true) (hl_K2 hK' (hl_callS (E := meE)
    (args := [lv (nm "originator"), lv (nm "beneficiary"), lv (nm "bal")])
    (tabJL_guestR _ _ _ me_mem) me_fp hfs meE_ok (fun g h => h) (K2_of hub)
    (fun vs hvs Γ1 p1 hrun hch _ => ao_mv LKb2.2 LKb2.1 hvs (bufOK_runT hGd hrun hBuf)
      (addr_bufOK hfs hrun hch)))) ?_
  intro u13 hu13 hlu13
  have LK13 : LkBO G T u13.locals := lkBO_loc hlu13 LKb2
  refine hl_decCall hK2 hC2 s3_memeq hu13 ?_
  intro t14 ht14 hloc14 same hsh14
  have LK14 : LkBO G T (setVarHOLFinite (nm "same") same t14).locals :=
    lkBO_set (by decide) (by decide) _ _ (lkBO_loc hloc14 LK13)
  have hu14 := kok_loc hK2 ht14 (setVarHOLFinite (nm "same") same t14).locals
  refine hl_seq_last (b1 := true) (hl_ite' (hl_K2 hK' (hEtl Γd u8 pd fs G c rest hfs _ _ _ _
    (K2_of hu14))) (hl_skip hu14)) ?_
  intro u15 hu15 hlu15
  have LK15 : LkBO G T u15.locals := lkBO_loc hlu15 LK14
  refine hl_decCall hK2 hC2 s3_has hu15 ?_
  intro t16 ht16 hloc16 created hsh16
  have LK16 : LkBO G T (setVarHOLFinite (nm "created") created t16).locals :=
    lkBO_set (by decide) (by decide) _ _ (lkBO_loc hloc16 LK15)
  have hu16 := kok_loc hK2 ht16 (setVarHOLFinite (nm "created") created t16).locals
  unfold sdTail
  refine hl_seq_last (b1 := true) (hl_ite' (hl_K2 hK' (hl_callS (E := hsE)
    (args := [.load .one (.op .add [.var .global (nm "ev"), cw 136]), lv (nm "originator"), cw 1])
    (tabJL_guestR _ _ _ hs_mem) hs_fp hfs hsE_ok (fun g h => h) (K2_of hu16)
    (fun vs hvs Γ1 p1 hrun hch hE1 => ao_delset hfs hrun.2.1 hE1
      (gk_gword hfs (K2_of hu16)) LK16.2 (bufOK_runT hGd hrun hBuf) hvs))) (hl_skip hu16)) ?_
  intro u17 hu17 hlu17
  refine hoareG_seq (R := fun ro t => ro = none ∧
      K2 (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u8 pd fs) (bd true) t) ?_
    (fun r t _ hr _ h => absurd h.1 hr)
    (hoareG_pt fun u hu => hoareG_conseq (hl_return hK2 (e := cw 0) (u0 := u)
      (K2_mk (b := true) (hK'.mono _ _ _ (K2_of hu.2) (Nat.le_refl _))) u.locals)
      (fun _ _ h => h) (fun _ _ _ _ h => h.1))
  refine hoareG_stG fun s _ hs G' v hG' hv => ?_
  subst hs
  rw [gk_gword hfs (K2_of hu17), Option.some.injEq] at hG'
  subst hG'
  rw [ev_cw] at hv
  cases hv
  exact ⟨0, rfl, fun _ => ⟨rfl, K2_mk (gk_runstore hF hfs (K2_of hu17))⟩⟩

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.j_op_selfdestruct
