import InitECandidate.Solver.MemSafe.Ops5.Ece
import InitECandidate.Solver.MemSafe.Ops3.CopyOps
import InitECandidate.Solver.MemSafe.Ops3.RetDataCopy
import InitECandidate.Solver.MemSafe.Frames.Emc2
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_mcopy` (sonnet-mem3)

`extend_memory_cost2` (Emc2.lean), the charge / extend pair, then inside the `heap_mark` /
`heap_release` window a `memcpy(tmp, MEM + s, n)` and `memcpy(MEM + d, tmp, n)`.  The only new
ingredient is `winI_memBuf`: the frame-memory destination `MEM + d` is a valid buffer of the
window's current typing (the EV object is kept by `Ext`, and `MEM_PTR` / `MEM_LEN` by `ProtKeep`).
-/

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

def mcpCostE : ExpHOL 64 := .op .add [cw 3, .panop .mul [cw 3, lv (nm "w")]]

def mcpThen : ProgHOL 64 :=
  .decCall (nm "d") .one (nm "sat_word") [lv (nm "dst")]
  (.decCall (nm "s") .one (nm "sat_word") [lv (nm "src")]
  (.decCall (nm "mark") .one (nm "heap_mark") []
  (.decCall (nm "tmp") .one (nm "alloc") [lv (nm "n")]
  (.seq (callD (nm "memcpy") [lv (nm "tmp"), memAtX "s", lv (nm "n")])
  (.seq (callD (nm "memcpy") [memAtX "d", lv (nm "tmp"), lv (nm "n")])
    (callD (nm "heap_release") [lv (nm "mark")]))))))

def mcpBody : ProgHOL 64 :=
  .decCall (nm "dst") (shK 4) (nm "stack_pop") []
  (.decCall (nm "src") (shK 4) (nm "stack_pop") []
  (.decCall (nm "len") (shK 4) (nm "stack_pop") []
  (.decCall (nm "n") .one (nm "sat_word") [lv (nm "len")]
  (.decCall (nm "w") .one (nm "words_of") [lv (nm "n")]
  (.decCall (nm "x") (shK 2) (nm "extend_memory_cost2")
    [lv (nm "src"), lv (nm "len"), lv (nm "dst"), lv (nm "len")]
  (.decCall (nm "cost") .one (nm "add_sat") [mcpCostE, Struct.rf 0 "x"]
  (.seq (callD (nm "charge_gas") [lv (nm "cost")])
  (.seq (callD (nm "extend_memory") [Struct.rf 1 "x"])
  (.seq (.ite (.cmp .notEqual (lv (nm "n")) (cw 0)) mcpThen .skip)
    cfbTail)))))))))

theorem mcpBody_eq : (declPair Guest.Software.guestFn_op_mcopy).2.2 = mcpBody := by
  conv => lhs; cbv
  rfl

theorem mcp_memcpy_mem : (nm "memcpy", Helpers.sigMemcpy, ([] : List Cap)) ∈ ShardsJL.tab26 := by
  decide +kernel


/-- The argument check of `memcpy(a0, a1, a2)` for a destination buffer `a0` of `N` bytes. -/
theorem argsOK_mcpy3 {Γ1 : Gam} {p1 : Ptrs} {t : State σ} {a0 a1 a2 : ExpHOL 64} {N : BitVec 64}
    (h0 : ∀ v, ev t a0 = some v → ∃ w, v = .val (.word w) ∧ BufOK guestC Γ1 p1 w.toNat N.toNat)
    (h2 : ev t a2 = some (.val (.word N))) {vs : List (ValueHOL 64)}
    (hvs : evs t [a0, a1, a2] = some vs) :
    ArgsOK guestC Γ1 p1 Helpers.sigMemcpy.params vs := by
  obtain ⟨v0, vs0, rfl, hv0, h0'⟩ := evs_cons_inv hvs
  obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv h0'
  obtain ⟨v2, vs2, rfl, hv2, h2'⟩ := evs_cons_inv h1
  have hz := evs_zero h2'
  subst hz
  obtain ⟨w, hw, hbuf⟩ := h0 v0 hv0
  subst hw
  rw [h2] at hv2; simp only [Option.some.injEq] at hv2; subst hv2
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i
  · simp [Helpers.sigMemcpy] at hpt hv; subst hpt; subst hv; exact ⟨w, N, rfl, rfl, by simpa using hbuf⟩
  · simp [Helpers.sigMemcpy] at hpt; subst hpt; trivial
  · simp [Helpers.sigMemcpy] at hpt; subst hpt; trivial
  · simp [Helpers.sigMemcpy] at hpt

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

/-! ## Frame-memory buffers inside a window -/

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs
local notation "WJ" => WinI (Hooks.guestHooksR (σ := σ))

/-- `MEM + S` as a buffer of `n` bytes for the EV object `o ∈ Γ` of a typing of the current state. -/
theorem memAt_buf {Γ : Gam} {pc : Ptrs} {u : State σ} {o : Obj} {e : BitVec 64} {x : String}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hp : ptrsOf u = some pc) (ho : o ∈ Γ)
    (hot : o.ty = tEV) (hob : o.base = e) (he' : gword u nmEv = some e) {S : BitVec 64}
    (hS : ev u (lv (nm x)) = some (.val (.word S))) {n : Nat}
    (hlen : S.toNat + n ≤ (fld u.memory e 32).toNat) {v : ValueHOL 64}
    (hv : ev u (memAtX x) = some v) :
    ∃ w, v = .val (.word w) ∧ BufOK guestC Γ pc w.toNat n := by
  obtain ⟨w, rfl⟩ := ev_op_word hv
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hv
  obtain ⟨hy', -⟩ := Struct.ev_evL (gword_some he') hy
  cases hy'
  rw [hS] at hz; cases hz
  subst hob
  have hb0 := (memBuf_ok hG hp ho hot (b := (fld u.memory o.base 24).toNat) (n := 0) le_rfl
    (by omega)).2
  have hadd : (rd u.memory (o.base + BitVec.ofNat 64 24) + S).toNat =
      (fld u.memory o.base 24).toNat + S.toNat :=
    Struct.toNat_add_small (x := fld u.memory o.base 24) (by have := scratchEnd_lt; omega)
  refine ⟨_, rfl, ?_⟩
  rw [hadd]
  exact (memBuf_ok hG hp ho hot (b := (fld u.memory o.base 24).toNat + S.toNat) (n := n)
    (by omega) (by omega)).1

/-- **`var m = heap_mark(); k`**. -/
theorem hoareG_winMark2 (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ} (hu : KJ d u0)
    {rn : MlS} {k : ProgHOL 64} {b' : Bool}
    (hk : ∀ (st : State σ) (m : BitVec 64) (Γ1 : Gam) (pm : Ptrs), st.memory = u0.memory →
      WJ Γ0 s0 p0 fs d (setVarHOLFinite rn (.val (.word m)) { st with locals := u0.locals }) m Γ1 pm
        (setVarHOLFinite rn (.val (.word m)) { st with locals := u0.locals }) →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (.val (.word m))
        { st with locals := u0.locals }) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn .one (nm "heap_mark") [] k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hf := funSpec_and (markSpec'_heap_mark (σ := σ) guestCtx_code) (funSpec_be' (nm "heap_mark"))
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hP vs hvs callee v st ⟨hR, hbe⟩ hctx hsh
    subst hP
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, hv⟩ := hR (by simp [Good]) hvs0
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    obtain ⟨⟨-, Γ1, p1, hrun, -⟩, -⟩ := id hu
    obtain ⟨a, -, -, ha, -, -, -⟩ := AllocImpl.ptrsOf_some hrun.2.1
    have hv' := mark_val_word (hv v rfl) ha
    subst hv'
    obtain ⟨Γ1', pm, hW⟩ := winI_mark hF.hooks hu ha
      (st := setVarHOLFinite rn (.val (.word a)) { st with locals := s.locals }) hm hg hd hbe
    exact hoareG_conseq (hk st a Γ1' pm hm hW) (fun _ _ h => h) fun r t _ _ hq => gq_loc kOK_KJ hq _
  · intro s hs hP vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    subst hP
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, -⟩ := hR (good_of_abn habn) hvs0
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    rw [rbd_abn habn]
    exact kok_loc kOK_KJ (kOK_KJ.mono _ _ _ (kOK_KJ.congr _ _ _ hu hm hg hd hbe)
      (Nat.zero_le _)) _

/-- The EV object survives a window: it is in `Γc`, the globals' `ev` is unchanged, and
`MEM_PTR` / `MEM_LEN` are the ones of the mark state. -/
theorem winI_ev (hfs : fs = (e, c) :: rest) {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam}
    {pc : Ptrs} {u : State σ} (hw : WJ Γ0 s0 p0 fs d um m Γc pc u) :
    ∃ o ∈ Γc, o.ty = tEV ∧ o.base = e ∧ gword u nmEv = some e ∧
      fld u.memory e 24 = fld um.memory e 24 ∧ fld u.memory e 32 = fld um.memory e 32 := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨-, Γ1, pm, hrun1, hch, hE, hm, hrun, hPK, hfp, hnf⟩ := hw
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  obtain ⟨o', ho', hb', ht', -⟩ := hrun.2.2.2.1 o hevo.1
  obtain ⟨q, hq, hord, hL, -⟩ := id hrun1.2.2.2.2.2.1
  have hsz := ev_size hF hL hevo.1 hevo.2.1
  have hpc : ∀ j, j ∈ evProtSlots → ProtCell guestC Γ1 (o.cell j) := fun j hj =>
    ⟨o, hevo.1, j, by unfold Obj.HasSlot; have : j ≤ 29 := by simp [evProtSlots] at hj; omega
                      omega,
      by rw [hevo.2.1]; exact hF.evProt j hj, rfl⟩
  have hk3 : fld u.memory e 24 = fld um.memory e 24 := by
    have := hPK _ (hpc 3 (by simp [evProtSlots]))
    unfold fld rd; rw [← hob]
    have h3 : (o.cell 3) = o.base + BitVec.ofNat 64 24 := rfl
    rw [h3] at this; rw [this]
  have hk4 : fld u.memory e 32 = fld um.memory e 32 := by
    have := hPK _ (hpc 4 (by simp [evProtSlots]))
    unfold fld rd; rw [← hob]
    have h3 : (o.cell 4) = o.base + BitVec.ofNat 64 32 := rfl
    rw [h3] at this; rw [this]
  have hgl : u.globals.lookup nmEv = um.globals.lookup nmEv :=
    hrun.2.2.2.2.2.2.1 nmEv hF.pgEv (by simp)
  refine ⟨o', ho', ht'.trans hevo.2.1, hb'.trans hob, ?_, hk3, hk4⟩
  have := gword_some hevo.2.2
  rw [← hgl] at this
  rw [← hob]; exact gword_of this

theorem mcp_core (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) {u0 : State σ}
    (hk0 : KJ 0 u0) :
    HoareG σ guestCtx (fun t => t = u0) mcpBody (GQ (KJ) true) := by
  unfold mcpBody
  refine hoareG_gkDec hfs pop_cl hk0 fun v1 st1 hk1 hsh1 => ?_
  obtain ⟨ws1, hws1, rfl⟩ := eq_wv_of_shapeEq' hsh1
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws1
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl)
    fun v2 st2 hk2 hsh2 => ?_
  obtain ⟨ws2, hws2, rfl⟩ := eq_wv_of_shapeEq' hsh2
  obtain ⟨s0', s1', s2', s3', rfl⟩ := Struct.wv4 hws2
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk2 rfl rfl rfl rfl)
    fun v3 st3 hk3 hsh3 => ?_
  obtain ⟨ws3, hws3, rfl⟩ := eq_wv_of_shapeEq' hsh3
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hws3
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
    fun u hu vs hvs callee nv st4 hm hg hd hbe hRv hsh4 => ?_
  have hKu : KJ 0 u := by rw [hu]; exact kOK_KJ.congr _ _ _ hk3 rfl rfl rfl rfl
  have hlen : ev u (lv (nm "len")) = some (wv [b0, b1, b2, b3]) := ev_self hu
  rw [evs_cons hlen evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hnv := hRv b0 b1 b2 b3 rfl
  subst hnv
  have hKs4 : KJ 0 st4 := kOK_KJ.congr _ _ _ hKu hm hg hd hbe
  have hL0 : eceLFs u [(nm "dst", wv [a0, a1, a2, a3]), (nm "src", wv [s0', s1', s2', s3']),
      (nm "len", wv [b0, b1, b2, b3])] := by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl
    · rw [hu]; dsimp only; lkc
    · rw [hu]; dsimp only; lkc
    · exact lk_self hu
  refine hoareG_kPure (Struct.pure_words_of guestCtx_code)
    fun u2 hu2 vs2 hvs2 callee2 wv2 st5 hm2 hg2 hd2 hbe2 hRv2 hsh5 => ?_
  have hKu2 : KJ 0 u2 := kc_kj_step hu2 hKs4
  have hn : ev u2 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := ev_self hu2
  rw [evs_cons hn evs_nil] at hvs2
  simp only [Option.some.injEq] at hvs2; subst hvs2
  have hwv := hRv2 _ rfl
  subst hwv
  have hKs5 : KJ 0 st5 := kOK_KJ.congr _ _ _ hKu2 hm2 hg2 hd2 hbe2
  have hL1 := ece_lfs_new (v := .val (.word (Struct.satWordF b0 b1 b2 b3))) hL0 (by hyt) hu2
  have hL2 := ece_lfs_new (v := .val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) hL1
    (by hyt) (show setVarHOLFinite (nm "w") (.val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))))
      { st5 with locals := u2.locals } = _ from rfl)
  have hKS3 : KJ 0 (setVarHOLFinite (nm "w") (.val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))))
      { st5 with locals := u2.locals }) := kOK_KJ.congr _ _ _ hKs5 rfl rfl rfl rfl
  refine hoareG_gkEmc2 (Γ0 := Γ0) (s0 := s0) (p0 := p0) (fs := fs) (E := e)
    (a0 := s0') (a1 := s1') (a2 := s2') (a3 := s3') (b0 := b0) (b1 := b1) (b2 := b2) (b3 := b3)
    (c0 := a0) (c1 := a1) (c2 := a2) (c3 := a3) (d0 := b0) (d1 := b1) (d2 := b2) (d3 := b3)
    (fun U hU => ?_) fun U hU st hm3 hg3 hd3 hbe3 => ?_
  · subst hU
    refine ⟨?_, AllocImpl.lookup_of_gword (gk_gword hfs hKS3)⟩
    refine evs_cons ?_ (evs_cons ?_ (evs_cons ?_ (evs_cons ?_ evs_nil)))
    · rw [ev_lv]; exact hL2 (nm "src", wv [s0', s1', s2', s3']) (by memt)
    · rw [ev_lv]; exact hL2 (nm "len", wv [b0, b1, b2, b3]) (by memt)
    · rw [ev_lv]; exact hL2 (nm "dst", wv [a0, a1, a2, a3]) (by memt)
    · rw [ev_lv]; exact hL2 (nm "len", wv [b0, b1, b2, b3]) (by memt)
  have hLU : eceLFs U [(nm "w", .val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))),
      (nm "n", .val (.word (Struct.satWordF b0 b1 b2 b3))),
      (nm "dst", wv [a0, a1, a2, a3]), (nm "src", wv [s0', s1', s2', s3']),
      (nm "len", wv [b0, b1, b2, b3])] := by rw [hU]; exact hL2
  have hKU : KJ 0 U := by rw [hU]; exact hKS3
  obtain ⟨X1, X2, hCX⟩ : ∃ X1 X2, emc2F s0' s1' s2' s3' b0 b1 b2 b3 a0 a1 a2 a3 b0 b1 b2 b3
      (fld U.memory e 32) = (X1, X2) := ⟨_, _, rfl⟩
  rw [hCX]
  dsimp only
  have hKst : KJ 0 st := kOK_KJ.congr _ _ _ hKU hm3 hg3 hd3 hbe3
  refine hoareG_kPure (Struct.pure_add_sat guestCtx_code)
    fun u4 hu4 vs4 hvs4 callee4 cv st6 hm4 hg4 hd4 hbe4 hRv4 hsh6 => ?_
  have hKu4 : KJ 0 u4 := kc_kj_step hu4 hKst
  have hLX := ece_lfs_new (v := wv [X1, X2]) hLU (by hyt) hu4
  have hw4 : ev u4 (lv (nm "w")) = some (.val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) := by
    rw [ev_lv]; exact hLX (nm "w", _) (by memt)
  have hx0 : ev u4 (Struct.rf 0 "x") = some (.val (.word X1)) :=
    Struct.ev_wv_word (hLX (nm "x", wv [X1, X2]) (by memt)) (i := 0) (by simp)
  have hcost : ev u4 mcpCostE = some (.val (.word (BitVec.ofNat 64 3 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) :=
    ev_add2 (ev_cw _ 3) (ev_mul2 (ev_cw _ 3) hw4)
  rw [evs_cons hcost (evs_cons hx0 evs_nil)] at hvs4
  simp only [Option.some.injEq] at hvs4; subst hvs4
  have hcv := hRv4 _ _ rfl
  subst hcv
  have hKs6 : KJ 0 st6 := kOK_KJ.congr _ _ _ hKu4 hm4 hg4 hd4 hbe4
  have hmem6 : st6.memory = U.memory := hm4.trans ((show u4.memory = st.memory by rw [hu4]; rfl).trans hm3)
  obtain ⟨hc32, hcb⟩ := gk_memlen hfs hKU
  have hemok : (Struct.addSatF (BitVec.ofNat 64 3 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1).toNat + 1 < 2 ^ 64 →
      X2.toNat % 32 = 0 ∧ (fld U.memory e 32).toNat + X2.toNat < 2 ^ 37 ∧
        (Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
          (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld U.memory e 32).toNat + X2.toNat) := by
    intro ha1
    have hne : X1 ≠ Struct.wMax := by
      intro h
      rw [h, Struct.addSatF_max, Struct.wMax_toNat] at ha1; omega
    have hne' : (emc2F s0' s1' s2' s3' b0 b1 b2 b3 a0 a1 a2 a3 b0 b1 b2 b3
        (fld U.memory e 32)).1 ≠ Struct.wMax := by rw [hCX]; exact hne
    obtain ⟨h32, hlt, -, hr2⟩ := emc2_ok hc32 hcb hne'
    rw [hCX] at h32 hlt hr2
    exact ⟨h32, hlt, hr2⟩
  refine hoareG_gkChgExt hfs hP (d := 0)
    (a := Struct.addSatF (BitVec.ofNat 64 3 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1) (X := X2)
    (u0 := setVarHOLFinite (nm "cost") (.val (.word (Struct.addSatF (BitVec.ofNat 64 3 +
      BitVec.ofNat 64 3 * Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1)))
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
  · obtain ⟨h32, hlt, -⟩ := hemok ha1
    refine ⟨h32, ?_⟩
    show (fld st6.memory e 32).toNat + _ ≤ _
    rw [hmem6]; omega
  · have hK1 : KJ 1 t := kOK_KJ.mono _ _ _ hKt (by
      have := cost3_pos (BitVec.ofNat 64 3) _ X1 (by decide) (by decide)
        (wordsOfF_lt (Struct.satWordF b0 b1 b2 b3))
      omega)
    have hlen' : (fld t.memory e 32).toNat = (fld U.memory e 32).toNat + X2.toNat := by
      rw [hlen]; show (fld st6.memory e 32).toNat + _ = _; rw [hmem6]
    have hLC := ece_lfs_new (v := .val (.word (Struct.addSatF (BitVec.ofNat 64 3 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1))) hLX (by hyt)
      (show setVarHOLFinite (nm "cost") (.val (.word (Struct.addSatF (BitVec.ofNat 64 3 +
        BitVec.ofNat 64 3 * Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)) X1)))
        { st6 with locals := u4.locals } = _ from rfl)
    have hLt := ece_lfs_loc hLC ht
    have hnT : ev t (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := by
      rw [ev_lv]; exact hLt (nm "n", _) (by memt)
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
        fun v hv vs hvs callee dv st8 hm8 hg8 hd8 hbe8 hRv8 hsh8 => ?_
      subst hv
      have hdstV : ev v (lv (nm "dst")) = some (wv [a0, a1, a2, a3]) := by
        rw [ev_lv]; exact hLt (nm "dst", wv [a0, a1, a2, a3]) (by memt)
      rw [evs_cons hdstV evs_nil] at hvs
      simp only [Option.some.injEq] at hvs; subst hvs
      have hdv := hRv8 a0 a1 a2 a3 rfl
      subst hdv
      have hK8 : KJ 1 st8 := kOK_KJ.congr _ _ _ hK1 hm8 hg8 hd8 hbe8
      refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
        fun v2 hv2 vs9 hvs9 callee9 sv st9 hm9 hg9 hd9 hbe9 hRv9 hsh9 => ?_
      have hsrcV2 : ev v2 (lv (nm "src")) = some (wv [s0', s1', s2', s3']) := by
        rw [ev_step hv2 (by decide), ev_lv]; exact hLt (nm "src", wv [s0', s1', s2', s3']) (by memt)
      rw [evs_cons hsrcV2 evs_nil] at hvs9
      simp only [Option.some.injEq] at hvs9; subst hvs9
      have hsv := hRv9 s0' s1' s2' s3' rfl
      subst hsv
      have hKv2 : KJ 1 v2 := kc_kj_step hv2 hK8
      have hK9 : KJ 1 st9 := kOK_KJ.congr _ _ _ hKv2 hm9 hg9 hd9 hbe9
      have hmm : st9.memory = v.memory := hm9.trans (by rw [hv2]; exact hm8)
      have hLd := ece_lfs_new (v := .val (.word (Struct.satWordF a0 a1 a2 a3))) hLt (by hyt) hv2
      refine hoareG_pt fun Ss hSs => ?_
      have hLs := ece_lfs_new (v := .val (.word (Struct.satWordF s0' s1' s2' s3'))) hLd (by hyt) hSs
      have hKSs : KJ 1 Ss := by rw [hSs]; exact kOK_KJ.congr _ _ _ hK9 rfl rfl rfl rfl
      have hSsmem : Ss.memory = v.memory := by rw [hSs]; exact hmm
      refine hoareG_winMark2 hfs hKSs fun stm m Γ1 pm hmemm hW4 => ?_
      refine hoareG_pt fun M0 hM0 => ?_
      rw [← hM0] at hW4
      have hLm := ece_lfs_new (v := .val (.word m)) hLs (by hyt) hM0
      have hM0mem : M0.memory = v.memory := by rw [hM0]; exact hmemm.trans hSsmem
      have hnM : ev M0 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := by
        rw [ev_lv]; exact hLm (nm "n", _) (by memt)
      refine hoareG_winAlloc hfs hW4 hnM fun st5 q pc5 hW5 hq8 hbuf => ?_
      refine hoareG_pt fun A0 hA0 => ?_
      rw [← hA0] at hW5
      have hLA := ece_lfs_new (v := .val (.word q)) hLm (by hyt) hA0
      have hnA : ev A0 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := by
        rw [ev_lv]; exact hLA (nm "n", _) (by memt)
      refine hoareG_winCall hfs rfl rfl mcp_memcpy_mem mcpy_fp hW5 (fun vs hvs => ?_) fun t6 hl6 ⟨Γ6, p6, hW6⟩ => ?_
      · refine argsOK_mcpy3 (N := Struct.satWordF b0 b1 b2 b3) (fun v hv => ?_) hnA hvs
        have hq : ev A0 (lv (nm "tmp")) = some (.val (.word q)) := by
          rw [ev_lv]; exact hLA (nm "tmp", _) (by memt)
        rw [hq] at hv; simp only [Option.some.injEq] at hv; subst hv
        exact ⟨q, rfl, hbuf⟩
      have hLt6 := ece_lfs_loc hLA hl6
      refine hoareG_winCall hfs rfl rfl mcp_memcpy_mem mcpy_fp hW6 (fun vs hvs => ?_)
        fun t7 hl7 ⟨Γ7, p7, hW7⟩ => ?_
      · obtain ⟨o, ho, hot, hob, he', hmp, hml⟩ := winI_ev hfs hW6
        obtain ⟨hG6, hp6⟩ := winI_G hW6
        have hn6 : ev t6 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := by
          rw [ev_lv]; exact hLt6 (nm "n", _) (by memt)
        refine argsOK_mcpy3 (N := Struct.satWordF b0 b1 b2 b3) (fun v hv => ?_) hn6 hvs
        have hSd : ev t6 (lv (nm "d")) = some (.val (.word (Struct.satWordF a0 a1 a2 a3))) := by
          rw [ev_lv]; exact hLt6 (nm "d", _) (by memt)
        refine memAt_buf hG6 hp6 ho hot hob he' hSd ?_ hv
        rw [hml, hM0mem]
        omega
      refine hoareG_end_skip ?_
      have hLt7 := ece_lfs_loc hLt6 hl7
      have hmark : ev t7 (lv (nm "mark")) = some (.val (.word m)) := by
        rw [ev_lv]; exact hLt7 (nm "mark", _) (by memt)
      refine hoareG_winRel hfs hW7 hmark fun t8 hl8 hk8 => ?_
      exact hoareG_skip fun s _ hs => ⟨fun _ => hs ▸ hk8, fun r hr => by cases hr⟩
    · exact hoareG_skip fun s _ ⟨hs, _⟩ => ⟨fun _ => hs ▸ hK1, fun r hr => by cases hr⟩

end steps

/-- **`op_mcopy`'s bounded step spec.** -/
theorem j_op_mcopy : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mcopy") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_mcopy) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 512) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [mcpBody_eq]
  exact mcp_core hfs hP hk0

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_mcopy
