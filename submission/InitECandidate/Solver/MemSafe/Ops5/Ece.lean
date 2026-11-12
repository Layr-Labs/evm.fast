import InitECandidate.Solver.MemSafe.Ops5.Glue
import InitECandidate.Solver.MemSafe.Ops3.CopyOps
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_extcodecopy` (sonnet-mem3)

`copy_from_buffer`'s shape (Ops3/CopyBuf.lean) with the account prefix (`to_address_masked`,
`access_gas_cost`, `warm_after_charge` between `charge_gas` and `extend_memory`) and
`ext_code_of` before the `buffer_read`.  `MEM_LEN` survives the two fold calls via
`hoareG_gkCallAK` / `hoareG_gkDecAK` (Glue.lean).
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

def eceCostE : ExpHOL 64 :=
  .op .add [lv (nm "acc"), cw 100, .panop .mul [cw 3, lv (nm "w")]]

def eceThen : ProgHOL 64 :=
  .decCall (nm "ms") .one (nm "sat_word") [lv (nm "mstart")]
   (.decCall (nm "cs") .one (nm "sat_word") [lv (nm "cstart")]
     (callD (nm "buffer_read") [Struct.rf 0 "code", Struct.rf 1 "code", lv (nm "cs"), lv (nm "n"),
       memAtX "ms"]))

def eceBody : ProgHOL 64 :=
  .decCall (nm "av") (shK 4) (nm "stack_pop") []
  (.decCall (nm "addr") .one (nm "to_address_masked") [lv (nm "av")]
  (.decCall (nm "mstart") (shK 4) (nm "stack_pop") []
  (.decCall (nm "cstart") (shK 4) (nm "stack_pop") []
  (.decCall (nm "size") (shK 4) (nm "stack_pop") []
  (.decCall (nm "n") .one (nm "sat_word") [lv (nm "size")]
  (.decCall (nm "w") .one (nm "words_of") [lv (nm "n")]
  (.decCall (nm "x") (shK 2) (nm "extend_memory_cost1") [lv (nm "mstart"), lv (nm "size")]
  (.decCall (nm "acc") .one (nm "access_gas_cost") [lv (nm "addr")]
  (.decCall (nm "cost") .one (nm "add_sat") [eceCostE, Struct.rf 0 "x"]
  (.seq (callD (nm "charge_gas") [lv (nm "cost")])
  (.seq (callD (nm "warm_after_charge") [lv (nm "addr"), lv (nm "acc")])
  (.seq (callD (nm "extend_memory") [Struct.rf 1 "x"])
  (.decCall (nm "code") (shK 2) (nm "ext_code_of") [lv (nm "addr")]
  (.seq (.ite (.cmp .notEqual (lv (nm "n")) (cw 0)) eceThen .skip)
    cfbTail))))))))))))))

theorem eceBody_eq : (declPair Guest.Software.guestFn_op_extcodecopy).2.2 = eceBody := by
  conv => lhs; cbv
  rfl

theorem ece_4_ga : 4 ∉ evKs gaCs := by decide
theorem ece_4_eoc : 4 ∉ evKs eocCs := by decide
theorem ece_4_prot : 4 ∈ evProtSlots := by decide

theorem ece_cost_pos (acc W X : BitVec 64) (hacc : acc = BitVec.ofNat 64 100 ∨ acc = BitVec.ofNat 64 3000)
    (hW : W.toNat < 2 ^ 59) :
    1 ≤ (Struct.addSatF (acc + (BitVec.ofNat 64 100 + BitVec.ofNat 64 3 * W)) X).toNat := by
  have h1 := Struct.addSatF_ge (acc + (BitVec.ofNat 64 100 + BitVec.ofNat 64 3 * W)) X
  have ha : 100 ≤ acc.toNat ∧ acc.toNat < 2 ^ 12 := by
    rcases hacc with rfl | rfl <;> simp [BitVec.toNat_ofNat]
  rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_mul] at h1
  simp only [BitVec.toNat_ofNat] at h1
  have h3 : 3 % 2 ^ 64 = 3 := by norm_num
  have h100 : 100 % 2 ^ 64 = 100 := by norm_num
  rw [h3, h100, Nat.mod_eq_of_lt (a := 3 * W.toNat) (by omega),
    Nat.mod_eq_of_lt (a := 100 + 3 * W.toNat) (by omega), Nat.mod_eq_of_lt (by omega)] at h1
  omega


theorem ece_agc_mem : (nm "access_gas_cost", (⟨[.any], [], [], false⟩ : Sig), ([] : List Cap)) ∈ ShardsJL.tab26 := by
  decide +kernel
theorem ece_agc_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "access_gas_cost") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem ece_opsE_agc : PlainOKB opsE (nm "access_gas_cost") (⟨[.any], [], [], false⟩ : Sig) [] 1 := by
  decide +kernel
theorem ece_4_agc : 4 ∉ evKs ([] : List Cap) := by decide

syntax "hyt" : tactic
macro_rules
  | `(tactic| hyt) => `(tactic| (simp only [List.mem_cons, forall_eq_or_imp, forall_eq, List.not_mem_nil,
      false_imp_iff, implies_true, and_true]; decide))

syntax "memt" : tactic
macro_rules
  | `(tactic| memt) => `(tactic| (repeat' (first | exact List.mem_cons_self | apply List.mem_cons_of_mem)))

/-- A list of tracked local lookups. -/
def eceLFs {σ : Type} (t : State σ) (L : List (MlS × ValueHOL 64)) : Prop :=
  ∀ p ∈ L, t.locals.lookup p.1 = some p.2

theorem ece_lfs_step {t t' st : State σ} {L : List (MlS × ValueHOL 64)} {y : MlS} {v : ValueHOL 64}
    (hL : eceLFs t L) (hy : ∀ p ∈ L, p.1 ≠ y) (hu : t' = setVarHOLFinite y v { st with locals := t.locals }) :
    eceLFs t' L := fun p hp => by rw [lk_step hu (Ne.symm (hy p hp))]; exact hL p hp

theorem ece_lfs_new {t t' st : State σ} {L : List (MlS × ValueHOL 64)} {y : MlS} {v : ValueHOL 64}
    (hL : eceLFs t L) (hy : ∀ p ∈ L, p.1 ≠ y) (hu : t' = setVarHOLFinite y v { st with locals := t.locals }) :
    eceLFs t' ((y, v) :: L) := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · exact lk_self hu
  · exact ece_lfs_step hL hy hu p hp

theorem ece_lfs_loc {t t' : State σ} {L : List (MlS × ValueHOL 64)} (hL : eceLFs t L)
    (h : t'.locals = t.locals) : eceLFs t' L := fun p hp => by rw [h]; exact hL p hp

theorem ece_addr_argsOK2 {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {u : State σ} {cv : BitVec 64}
    (hlA : u.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))))
    (hlC : u.locals.lookup (nm "acc") = some (.val (.word cv)))
    {vs : List (ValueHOL 64)} (hvs : evs u [lv (nm "addr"), lv (nm "acc")] = some vs) {Γ1 : Gam}
    {p1 : Ptrs} (hrun : RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u fs) : ArgsOK guestC Γ1 p1 [.buf 20, .any] vs := by
  have h1 : evs u [lv (nm "addr"), lv (nm "acc")] =
      some [.val (.word (e + BitVec.ofNat 64 240)), .val (.word cv)] :=
    evs_cons (by rw [ev_lv]; exact hlA) (evs_cons (by rw [ev_lv]; exact hlC) evs_nil)
  rw [h1] at hvs
  cases hvs
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨_, rfl, addr_bufOK hfs hrun hch⟩
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    trivial
  · simp at hpt

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

theorem ece_core (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) {u0 : State σ}
    (hk0 : KJ 0 u0) :
    HoareG σ guestCtx (fun t => t = u0) eceBody (GQ (KJ) true) := by
  unfold eceBody
  refine hoareG_gkDec hfs pop_cl hk0 fun v1 st1 hk1 hsh1 => ?_
  have hS1 : KJ 0 (setVarHOLFinite (nm "av") v1 { st1 with locals := u0.locals }) :=
    kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl
  refine hl_decCallV kOK_KJ (callSem_opsE hfs) tam_spec opsPfx_tam hS1 ?_
  intro t2 ht2 hloc2 v2 hsh2 hRv
  obtain ⟨vs, callee, st, hvs, hR⟩ := hRv
  obtain ⟨G, hG, rfl⟩ := hR (by simp [Good]) v2 rfl
  have hGe := gk_gword hfs hS1
  have hGG : e = G := (Option.some.inj (hG.symm.trans hGe)).symm
  subst hGG
  have hS2 : KJ 0 (setVarHOLFinite (nm "addr") (.val (.word (e + BitVec.ofNat 64 240))) t2) :=
    kok_loc kOK_KJ ht2 _
  refine hoareG_gkDec hfs pop_cl hS2 fun v3 st3 hk3 hsh3 => ?_
  obtain ⟨ws3, hws3, rfl⟩ := eq_wv_of_shapeEq' hsh3
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws3
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk3 rfl rfl rfl rfl) fun v4 st4 hk4 hsh4 => ?_
  obtain ⟨ws4, hws4, rfl⟩ := eq_wv_of_shapeEq' hsh4
  obtain ⟨d0, d1, d2, d3, rfl⟩ := Struct.wv4 hws4
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk4 rfl rfl rfl rfl) fun v5 st5 hk5 hsh5 => ?_
  obtain ⟨ws5, hws5, rfl⟩ := eq_wv_of_shapeEq' hsh5
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hws5
  -- locals facts at the state after the three pops
  have hlAd : (setVarHOLFinite (nm "size") (wv [b0, b1, b2, b3]) { st5 with locals :=
      (setVarHOLFinite (nm "cstart") (wv [d0, d1, d2, d3]) { st4 with locals :=
      (setVarHOLFinite (nm "mstart") (wv [a0, a1, a2, a3]) { st3 with locals :=
      (setVarHOLFinite (nm "addr") (.val (.word (e + BitVec.ofNat 64 240))) t2).locals }).locals }).locals
      }).locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) := by lkc
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
    fun u hu vs hvs callee nv st6 hm hg hd hbe hRv hsh6 => ?_
  have hKu : KJ 0 u := by rw [hu]; exact kOK_KJ.congr _ _ _ hk5 rfl rfl rfl rfl
  have hsize : ev u (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := ev_self hu
  rw [evs_cons hsize evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hnv := hRv b0 b1 b2 b3 rfl
  subst hnv
  have hKs6 : KJ 0 st6 := kOK_KJ.congr _ _ _ hKu hm hg hd hbe
  have hAd : u.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) := by
    rw [hu]; exact hlAd
  have hMs : u.locals.lookup (nm "mstart") = some (wv [a0, a1, a2, a3]) := by
    rw [hu]; lkc
  have hCs : u.locals.lookup (nm "cstart") = some (wv [d0, d1, d2, d3]) := by
    rw [hu]; lkc
  refine hoareG_kPure (Struct.pure_words_of guestCtx_code)
    fun u2 hu2 vs2 hvs2 callee2 wv2 st7 hm2 hg2 hd2 hbe2 hRv2 hsh7 => ?_
  have hKu2 : KJ 0 u2 := kc_kj_step hu2 hKs6
  have hn : ev u2 (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := ev_self hu2
  rw [evs_cons hn evs_nil] at hvs2
  simp only [Option.some.injEq] at hvs2; subst hvs2
  have hwv := hRv2 _ rfl
  subst hwv
  have hKs7 : KJ 0 st7 := kOK_KJ.congr _ _ _ hKu2 hm2 hg2 hd2 hbe2
  refine hoareG_kPure (Struct.pure_extend_memory_cost1 guestCtx_code)
    fun u3 hu3 vs3 hvs3 callee3 xv st8 hm3 hg3 hd3 hbe3 hRv3 hsh8 => ?_
  have hKu3 : KJ 0 u3 := kc_kj_step hu3 hKs7
  have hstart : ev u3 (lv (nm "mstart")) = some (wv [a0, a1, a2, a3]) := by
    rw [ev_lv, lk_step hu3 (by decide), lk_step hu2 (by decide)]; exact hMs
  have hsize3 : ev u3 (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := by
    rw [ev_step hu3 (by decide), ev_step hu2 (by decide)]
    exact hsize
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
  have hKs8 : KJ 0 st8 := kOK_KJ.congr _ _ _ hKu3 hm3 hg3 hd3 hbe3
  have hAd3 : u3.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) := by
    rw [lk_step hu3 (by decide), lk_step hu2 (by decide)]; exact hAd
  have hKn : KJ 0 (setVarHOLFinite (nm "x") (wv [X1, X2]) { st8 with locals := u3.locals }) :=
    kOK_KJ.congr _ _ _ hKs8 rfl rfl rfl rfl
  refine hoareG_gkDecAKV (gw := [Hooks.gJn]) (args := [lv (nm "addr")]) ece_agc_mem ece_agc_fp hfs ece_opsE_agc (fun g h => h) agc_spec hKn
    (fun vs hvs Γ1 p1 _ _ _ => argsOK_any (by simp) (by simp [Struct.evs_len1 hvs])) ?_
  intro t3 hk3 hsl v3 hsh9 hRv9
  obtain ⟨vs9, callee9, st9, hvs9, hR9⟩ := hRv9
  have hv3 := hR9 (by simp [Good]) v3 rfl
  obtain ⟨A, rfl, hA⟩ : ∃ A, v3 = .val (.word A) ∧
      (A = BitVec.ofNat 64 100 ∨ A = BitVec.ofNat 64 3000) := by
    rcases hv3 with rfl | rfl
    · exact ⟨_, rfl, Or.inl rfl⟩
    · exact ⟨_, rfl, Or.inr rfl⟩
  have hmem9 : fld t3.memory e 32 = fld st8.memory e 32 := hsl 4 ece_4_prot ece_4_agc
  have hL0 : eceLFs u [(nm "addr", .val (.word (e + BitVec.ofNat 64 240))),
      (nm "mstart", wv [a0, a1, a2, a3]), (nm "cstart", wv [d0, d1, d2, d3])] := by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact hAd
    · exact hMs
    · exact hCs
  have hL1 := ece_lfs_new (v := .val (.word (Struct.satWordF b0 b1 b2 b3))) hL0 (by hyt) hu2
  have hL2 := ece_lfs_new (v := .val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))))
    hL1 (by hyt) hu3
  have hL3 := ece_lfs_new (v := wv [X1, X2]) hL2 (by hyt)
    (show setVarHOLFinite (nm "x") (wv [X1, X2]) { st8 with locals := u3.locals } = _ from rfl)
  refine hoareG_kPure (Struct.pure_add_sat guestCtx_code)
    fun u4 hu4 vs4 hvs4 callee4 cv st10 hm4 hg4 hd4 hbe4 hRv4 hsh10 => ?_
  have hL4 := ece_lfs_new (v := .val (.word A)) hL3 (by hyt) hu4
  have hKu4 : KJ 0 u4 := by rw [hu4]; exact kOK_KJ.congr _ _ _ hk3 rfl rfl rfl rfl
  have hAcc4 : ev u4 (lv (nm "acc")) = some (.val (.word A)) := ev_self hu4
  have hw4 : ev u4 (lv (nm "w")) = some (.val (.word (Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3)))) := by
    rw [ev_lv]; exact hL4 (nm "w", _) (by simp)
  have hx0 : ev u4 (Struct.rf 0 "x") = some (.val (.word X1)) :=
    Struct.ev_wv_word (hL4 (nm "x", wv [X1, X2]) (by simp)) (i := 0) (by simp)
  have hcost : ev u4 eceCostE = some (.val (.word (A + (BitVec.ofNat 64 100 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))))) :=
    ev_add3 hAcc4 (ev_cw _ 100) (ev_mul2 (ev_cw _ 3) hw4)
  rw [evs_cons hcost (evs_cons hx0 evs_nil)] at hvs4
  simp only [Option.some.injEq] at hvs4; subst hvs4
  have hcv := hRv4 _ _ rfl
  subst hcv
  have hKs10 : KJ 0 st10 := kOK_KJ.congr _ _ _ hKu4 hm4 hg4 hd4 hbe4
  have hmem10 : st10.memory = t3.memory := hm4.trans (by rw [hu4]; rfl)
  obtain ⟨hc32, hcb⟩ := gk_memlen hfs hKs10
  have hmem32 : (rd (callEntryStateHOLFinite u3 callee3).memory (e + BitVec.ofNat 64 32)).toNat =
      (fld st10.memory e 32).toNat := by
    rw [hmem10, hmem9, hm3]; rfl
  have hemok : (Struct.addSatF (A + (BitVec.ofNat 64 100 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))) X1).toNat + 1 < 2 ^ 64 →
      X2.toNat % 32 = 0 ∧ (fld st10.memory e 32).toNat + X2.toNat < 2 ^ 37 ∧
        (Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
          (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld st10.memory e 32).toNat + X2.toNat) := by
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
  have hL5 := ece_lfs_new (v := .val (.word (Struct.addSatF (A + (BitVec.ofNat 64 100 +
      BitVec.ofNat 64 3 * Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))) X1))) hL4 (by hyt)
    (show setVarHOLFinite (nm "cost") (.val (.word (Struct.addSatF (A + (BitVec.ofNat 64 100 +
      BitVec.ofNat 64 3 * Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))) X1)))
      { st10 with locals := u4.locals } = _ from rfl)
  refine hoareG_gkCharge hfs hP (d := 0) (a := Struct.addSatF (A + (BitVec.ofNat 64 100 +
      BitVec.ofNat 64 3 * Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))) X1)
    (x := lv (nm "cost")) (fun u hu => ?_) ?_
  · subst hu
    exact ⟨kOK_KJ.congr _ _ _ hKs10 rfl rfl rfl rfl, Struct.ev_lv_set _ _ _⟩
  refine hoareG_pt fun t ⟨u, hu', hl, hKt, ha1, hale, hmem, hg⟩ => ?_
  subst hu'
  have hLt := ece_lfs_loc hL5 hl
  have hlAd : t.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) :=
    hLt (nm "addr", _) (by simp)
  have hlAc : t.locals.lookup (nm "acc") = some (.val (.word A)) := hLt (nm "acc", _) (by simp)
  have hmt : (fld t.memory e 32).toNat = (fld st10.memory e 32).toNat := by
    rw [hmem, fld_charge32]; rfl
  refine hoareG_gkCallAK (gw := [Hooks.gJn]) (args := [lv (nm "addr"), lv (nm "acc")])
    wam_mem wam_fp hfs opsBE_wam (fun g h => h) hKt
    (fun vs hvs Γ1 p1 hrun hch _ => ece_addr_argsOK2 hfs hlAd hlAc hvs hrun hch) ?_
  intro t' hl' hKt' hsl'
  have hmemw : fld t'.memory e 32 = fld t.memory e 32 := hsl' 4 ece_4_prot ece_4_ga
  have hLt' := ece_lfs_loc hLt hl'
  refine hoareG_gkEm hfs (P := fun s => s = t') (d := 0 + (Struct.addSatF (A + (BitVec.ofNat 64 100 +
      BitVec.ofNat 64 3 * Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))) X1).toNat) (X := X2) ?_ ?_
  · intro s hs; subst hs
    obtain ⟨h32, hlt, -⟩ := hemok ha1
    refine ⟨hKt', ?_, h32, ?_⟩
    · exact Struct.ev_wv_word (hLt' (nm "x", wv [X1, X2]) (by simp)) (i := 1) (by simp)
    · rw [hmemw]; omega
  refine hoareG_pt fun t'' ⟨s, hs, hl'', hKt'', hlen, _⟩ => ?_
  subst hs
  have hLt'' := ece_lfs_loc hLt' hl''
  have hlAd'' : t''.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) :=
    hLt'' (nm "addr", _) (by simp)
  refine hoareG_gkDecAK (gw := [Hooks.gJn]) (args := [lv (nm "addr")])
    eoc_mem eoc_fp hfs opsBE_eoc (fun g h => h) hKt''
    (fun vs hvs Γ1 p1 hrun hch _ => addr_argsOK1 hfs hlAd'' hvs hrun hch) ?_
  intro t4 hKt4 hsl4 v4 hsh4
  have hmem4 : fld t4.memory e 32 = fld t''.memory e 32 := hsl4 4 ece_4_prot ece_4_eoc
  refine hoareG_pt fun V hV => ?_
  have hLV := ece_lfs_new (v := v4) hLt'' (by hyt) hV
  have hnV : ev V (lv (nm "n")) = some (.val (.word (Struct.satWordF b0 b1 b2 b3))) := by
    rw [ev_lv]; exact hLV (nm "n", _) (by simp)
  have hmsV : ev V (lv (nm "mstart")) = some (wv [a0, a1, a2, a3]) := by
    rw [ev_lv, lk_step hV (by decide)]; exact hLt'' (nm "mstart", wv [a0, a1, a2, a3]) (by memt)
  have hcsV : ev V (lv (nm "cstart")) = some (wv [d0, d1, d2, d3]) := by
    rw [ev_lv, lk_step hV (by decide)]; exact hLt'' (nm "cstart", wv [d0, d1, d2, d3]) (by memt)
  have hC1 : 1 ≤ 0 + (Struct.addSatF (A + (BitVec.ofNat 64 100 + BitVec.ofNat 64 3 *
      Struct.wordsOfF (Struct.satWordF b0 b1 b2 b3))) X1).toNat := by
    have := ece_cost_pos A _ X1 hA (wordsOfF_lt (Struct.satWordF b0 b1 b2 b3))
    omega
  have hK1 : KJ 1 V := by
    rw [hV]; exact kOK_KJ.congr _ _ _ (kOK_KJ.mono _ _ _ hKt4 hC1) rfl rfl rfl rfl
  have hlenV : (fld V.memory e 32).toNat = (fld st10.memory e 32).toNat + X2.toNat := by
    have : V.memory = t4.memory := by rw [hV]; rfl
    rw [this, hmem4, hlen, hmemw, ← hmt]
  refine hoareG_seq (R := GQ (KJ) true) (hoareG_ite ?_ ?_) (fun r t' _ hr _ h => h)
    (hoareG_pt fun t' ht' => gc_sound kOK_KJ (callSem_gE hfs) _ true true cfbTail_gc t'
      (ht'.1 rfl))
  · refine hoareG_pt fun t' ⟨ht', w, hw, hw0⟩ => ?_
    rw [ht'] at hw ⊢
    rw [Struct.cmp_ne_val hnV (ev_cw _ 0)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hN : Struct.satWordF b0 b1 b2 b3 ≠ 0 := by
      intro h0; rw [← hw] at hw0; simp [h0] at hw0
    have hsum := (hemok ha1).2.2 (iz_of_sat hN)
    refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
      fun v hv vs hvs callee msv st11 hm8 hg8 hd8 hbe8 hRv8 hsh11 => ?_
    subst hv
    rw [evs_cons hmsV evs_nil] at hvs
    simp only [Option.some.injEq] at hvs; subst hvs
    have hmsv := hRv8 a0 a1 a2 a3 rfl
    subst hmsv
    have hK8 : KJ 1 st11 := kOK_KJ.congr _ _ _ hK1 hm8 hg8 hd8 hbe8
    refine hoareG_kPure (Struct.pure_sat_word guestCtx_code)
      fun v2' hv2 vs9 hvs9 callee9 csv st12 hm9 hg9 hd9 hbe9 hRv9 hsh12 => ?_
    have hcsV2 : ev v2' (lv (nm "cstart")) = some (wv [d0, d1, d2, d3]) := by
      rw [ev_step hv2 (by decide)]; exact hcsV
    rw [evs_cons hcsV2 evs_nil] at hvs9
    simp only [Option.some.injEq] at hvs9; subst hvs9
    have hcsv := hRv9 d0 d1 d2 d3 rfl
    subst hcsv
    have hKv2 : KJ 1 v2' := kc_kj_step hv2 hK8
    have hK9 : KJ 1 st12 := kOK_KJ.congr _ _ _ hKv2 hm9 hg9 hd9 hbe9
    have hmm : st12.memory = v.memory := hm9.trans (by rw [hv2]; exact hm8)
    refine hoareG_end_skip ?_
    refine hoareG_gkSumm hfs (sg := Helpers.sigBufferRead) rfl
      (Helpers.summ_buffer_read Hooks.guestHooksR_lawful Helpers.tagSlots_guestC guestCtx_code
        (Rec.foldOK_guestR (σ := σ)).hal) br_fp (d := 1) ?_ ?_
    · intro u hu
      subst hu
      refine ⟨kc_kj_step rfl hK9, fun vs hvs Γ1 p1 hG hp hch => ?_⟩
      refine argsOK_brMem hfs hG hp hch (S := Struct.satWordF a0 a1 a2 a3)
        (N := Struct.satWordF b0 b1 b2 b3) (a3 := lv (nm "n")) ?_ ?_ ?_ hvs
      · exact (ev_step (y := nm "cs") (x := nm "ms") rfl (by decide)).trans (ev_self hv2)
      · exact (ev_step (y := nm "cs") (x := nm "n") rfl (by decide)).trans
          ((ev_step hv2 (by decide)).trans hnV)
      · show _ ≤ (fld st12.memory e 32).toNat
        rw [hmm, hlenV]; omega
    · exact hoareG_skip fun s _ ⟨u, hu, hl, hK, _⟩ => ⟨fun _ => hK, fun r hr => by cases hr⟩
  · exact hoareG_skip fun s _ ⟨hs, _⟩ => ⟨fun _ => hs ▸ hK1, fun r hr => by cases hr⟩

end steps

/-- **`op_extcodecopy`'s bounded step spec.** -/
theorem j_op_extcodecopy : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_extcodecopy") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_extcodecopy) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 545) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [eceBody_eq]
  exact ece_core hfs hP hk0

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_extcodecopy
