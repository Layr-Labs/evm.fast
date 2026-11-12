import InitECandidate.Solver.MemSafe.Ops2.Top
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem satWord_lt32 {a0 a1 a2 a3 b0 b1 b2 b3 cur : BitVec 64} (hc32 : cur.toNat % 32 = 0)
    (hcb : cur.toNat < 2 ^ 37) (hne : (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3 cur).1 ≠ Struct.wMax)
    (hlt : cur.toNat + (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3 cur).2.toNat < 2 ^ 32) :
    (Struct.satWordF b0 b1 b2 b3).toNat < 2 ^ 32 := by
  obtain ⟨-, -, h3⟩ := Struct.emc1_ok hc32 hcb hne
  by_cases hz : Struct.isZeroF b0 b1 b2 b3 = 0
  · have := h3 hz
    omega
  · have hz' : (b0 ||| (b1 ||| (b2 ||| (b3 ||| 0)))) = 0 := by
      by_contra hc
      unfold Struct.isZeroF at hz
      rw [if_neg hc] at hz
      exact hz rfl
    have key : ∀ b0 b1 b2 b3 : BitVec 64, (b0 ||| (b1 ||| (b2 ||| (b3 ||| 0)))) = 0 →
        b0 = 0 ∧ b1 = 0 ∧ b2 = 0 ∧ b3 = 0 := by
      intro b0 b1 b2 b3 h
      bv_decide
    obtain ⟨h0, h1, h2, h3'⟩ := key _ _ _ _ hz'
    subst h0 h1 h2 h3'
    unfold Struct.satWordF
    simp

def retStores (fin : ProgHOL 64) : ProgHOL 64 :=
  .seq (stG "ev" 120 (.op .add [Struct.evL 24, lv (nm "s")]))
    (.seq (stG "ev" 128 (lv (nm "n"))) fin)

def retPre (fin : ProgHOL 64) : ProgHOL 64 :=
  .decCall (nm "start") (shK 4) (nm "stack_pop") []
    (.decCall (nm "size") (shK 4) (nm "stack_pop") []
      (.decCall (nm "x") (shK 2) (nm "extend_memory_cost1") [lv (nm "start"), lv (nm "size")]
        (.seq (callD (nm "charge_gas") [Struct.rf 0 "x"])
          (.seq (callD (nm "extend_memory") [Struct.rf 1 "x"])
            (.decCall (nm "n") .one (nm "sat_word") [lv (nm "size")]
              (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")] (retStores fin)))))))

def retFin : ProgHOL 64 := .seq (stG "ev" 104 (cw 0)) Struct.rz
def revFin : ProgHOL 64 := .seq (.raise nmEvmErr (cw 1)) Struct.rz

theorem retBody_eq : (declPair Guest.Software.guestFn_op_return).2.2 = retPre retFin := by
  conv => lhs; cbv
  rfl

theorem revBody_eq : (declPair Guest.Software.guestFn_op_revert).2.2 = retPre revFin := by
  conv => lhs; cbv
  rfl


section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- `st ev + k, e1` into a driver slot keeps `GK d`. -/
theorem hoareG_gkStOther (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ} (hu : KJ d u0)
    {j k : Nat} (hk : k = 8 * j) (hj : j ∈ evDriverSlots) (hj8 : j ≠ 8) (hj24 : j ≠ 24)
    (hj13 : j ≠ 13) {e1 : ExpHOL 64} (hx : ∀ v, ev u0 e1 = some v → ∃ x, v = .val (.word x)) :
    HoareG σ guestCtx (fun t => t = u0) (stG "ev" k e1)
      (fun ro t => ro = none ∧ KJ d t ∧ t.locals = u0.locals) := by
  subst hk
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst hs
  rw [gk_gword hfs hu, Option.some.injEq] at hG
  subst hG
  obtain ⟨x, rfl⟩ := hx v hv
  exact ⟨x, rfl, fun _ => ⟨rfl, gk_topOther Hooks.frameCfg_guestHooksR hfs hu hj hj8 hj24 hj13
    rfl rfl rfl rfl, rfl⟩⟩

/-- Eon: `st ev + 128, x` with `x` below `2^32` (`EV_OUTPUT_N`) keeps `GK d`. -/
theorem hoareG_gkStOut (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ} (hu : KJ d u0)
    {e1 : ExpHOL 64} {x : BitVec 64} (hx : x.toNat < 2 ^ 32)
    (hv : ∀ v, ev u0 e1 = some v → v = .val (.word x)) :
    HoareG σ guestCtx (fun t => t = u0) (stG "ev" 128 e1)
      (fun ro t => ro = none ∧ KJ d t ∧ t.locals = u0.locals) := by
  refine hoareG_stG fun s _ hs G v hG hv' => ?_
  subst hs
  rw [gk_gword hfs hu, Option.some.injEq] at hG
  subst hG
  have hvv := hv v hv'
  subst hvv
  exact ⟨x, rfl, fun _ => ⟨rfl, gk_topOut Hooks.frameCfg_guestHooksR hfs hu hx rfl rfl rfl rfl, rfl⟩⟩

/-- `st ev + 104, 0` (clear `RUNNING`) gives `GK 1`. -/
theorem hoareG_gkStRun (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {d : Nat} {u0 : State σ}
    (hu : KJ d u0) :
    HoareG σ guestCtx (fun t => t = u0) (stG "ev" 104 (cw 0)) (fun ro t => ro = none ∧ KJ 1 t) := by
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst hs
  rw [gk_gword hfs hu, Option.some.injEq] at hG
  subst hG
  rw [ev_cw] at hv
  cases hv
  exact ⟨0, rfl, fun _ => ⟨rfl, gk_topRun Hooks.frameCfg_guestHooksR hfs ha0 hu rfl rfl rfl rfl⟩⟩

theorem satw_size_cl : callCl gE false (nm "sat_word") [lv (nm "size")] = some false := by
  decide +kernel
theorem satw_start_cl : callCl gE false (nm "sat_word") [lv (nm "start")] = some false := by
  decide +kernel

/-- **The shared prefix of `op_return` / `op_revert`** up to the two driver stores; `hfin` proves the
rest from `GK 0`. -/
theorem ret_core (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) (hk0 : KJ 0 s0)
    {fin : ProgHOL 64} (hfin : ∀ t : State σ, KJ 0 t →
      HoareG σ guestCtx (fun s => s = t) fin (GQ (KJ) true)) :
    HoareG σ guestCtx (fun t => t = s0) (retPre fin) (GQ (KJ) true) := by
  refine hoareG_gkDec hfs pop_cl hk0 fun v1 st1 hk1 hsh1 => ?_
  obtain ⟨ws1, hws1, rfl⟩ := eq_wv_of_shapeEq' hsh1
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws1
  refine hoareG_gkDec hfs pop_cl (by exact kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl)
    fun v2 st2 hk2 hsh2 => ?_
  obtain ⟨ws2, hws2, rfl⟩ := eq_wv_of_shapeEq' hsh2
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hws2
  refine hoareG_kPure (Struct.pure_extend_memory_cost1 guestCtx_code)
    fun u hu vs hvs callee xv st3 hm hg hd hbe hRv hsh3 => ?_
  have hKu : KJ 0 u := by rw [hu]; exact kOK_KJ.congr _ _ _ hk2 rfl rfl rfl rfl
  have hstart : ev u (lv (nm "start")) = some (wv [a0, a1, a2, a3]) := by
    rw [hu, Struct.ev_lv_set_ne _ _ (by decide)]; exact Struct.ev_lv_set _ _ _
  have hsize : ev u (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := by
    rw [hu]; exact Struct.ev_lv_set _ _ _
  rw [evs_cons hstart (evs_cons hsize evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hE : (callEntryStateHOLFinite u callee).globals.lookup Struct.gEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs
      (show KJ 0 (callEntryStateHOLFinite u callee) from kOK_KJ.congr _ _ _ hKu rfl rfl rfl rfl))
  have hvv := hRv a0 a1 a2 a3 b0 b1 b2 b3 e rfl hE
  subst hvv
  have hKst3 : KJ 0 st3 := kOK_KJ.congr _ _ _ hKu hm hg hd hbe
  have hmem32 : (rd (callEntryStateHOLFinite u callee).memory (e + BitVec.ofNat 64 32)).toNat =
      (fld st3.memory e 32).toNat := by rw [hm]; rfl
  obtain ⟨hc32, hcb⟩ := gk_memlen hfs hKst3
  let CX := Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3 (rd (callEntryStateHOLFinite u callee).memory
    (e + BitVec.ofNat 64 32))
  refine hoareG_gkChgExt hfs hP (d := 0) (a := CX.1) (X := CX.2)
    (u0 := setVarHOLFinite (nm "x") (wv [CX.1, CX.2]) { st3 with locals := u.locals })
    (by exact kOK_KJ.congr _ _ _ hKst3 rfl rfl rfl rfl) (e1 := Struct.rf 0 "x")
    (e2 := Struct.rf 1 "x") (fun t ht => ?_) (fun t ht => ?_) (fun ha1 => ?_)
    fun t ht hKt ha1 hale hlen => ?_
  · have hl : t.locals.lookup (nm "x") = some (wv [CX.1, CX.2]) := by rw [ht]; exact lk_set_self _ _ _
    exact Struct.ev_wv_word hl (i := 0) (by simp)
  · have hl : t.locals.lookup (nm "x") = some (wv [CX.1, CX.2]) := by rw [ht]; exact lk_set_self _ _ _
    exact Struct.ev_wv_word hl (i := 1) (by simp)
  · have hne : (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3 (rd (callEntryStateHOLFinite u callee).memory
        (e + BitVec.ofNat 64 32))).1 ≠ Struct.wMax := by
      intro h; rw [h, Struct.wMax_toNat] at ha1; omega
    obtain ⟨h32, hlt, -⟩ := Struct.emc1_ok (cur := rd (callEntryStateHOLFinite u callee).memory
      (e + BitVec.ofNat 64 32)) (by rw [hmem32]; exact hc32) (by rw [hmem32]; exact hcb) hne
    refine ⟨h32, ?_⟩
    show (fld st3.memory e 32).toNat + _ ≤ _
    have hlt' : (fld st3.memory e 32).toNat + CX.2.toNat < 2 ^ 37 := by
      rw [← hmem32]; exact hlt
    omega
  · have hKt0 : KJ (bd false) t := kOK_KJ.mono _ _ _ hKt (by simp [bd])
    -- eon: the output length `n = sat_word(size)` is below `2^32`
    have hnne : CX.1 ≠ Struct.wMax := by
      intro h; rw [h, Struct.wMax_toNat] at ha1; omega
    have hlt32 : (rd (callEntryStateHOLFinite u callee).memory
        (e + BitVec.ofNat 64 32)).toNat + CX.2.toNat < 2 ^ 32 := by
      have h1 := (gk_memlen32 hfs hKt).2
      have hlen' : (fld t.memory e 32).toNat = (fld st3.memory e 32).toNat + CX.2.toNat := hlen
      rw [hmem32]; omega
    have hsz : ev t (lv (nm "size")) = some (wv [b0, b1, b2, b3]) := by
      rw [ev_lv_locals ht, Struct.ev_lv_set_ne _ _ (by decide)]
      exact hsize
    refine hoareG_kPure (Struct.pure_sat_word guestCtx_code) (P := fun s => s = t)
      fun u' hu' vs' hvs' callee' nv st4 hm' hg' hd' hbe' hRv' hsh4 => ?_
    subst hu'
    rw [evs_cons hsz evs_nil] at hvs'
    simp only [Option.some.injEq] at hvs'; subst hvs'
    have hnv := hRv' b0 b1 b2 b3 rfl
    generalize hnn_def : Struct.satWordF b0 b1 b2 b3 = nn at hnv
    subst hnv
    have hnn : nn.toNat < 2 ^ 32 := hnn_def ▸ satWord_lt32 (by rw [hmem32]; exact hc32)
      (by rw [hmem32]; exact hcb) hnne hlt32
    have hk4 : KJ 0 st4 := kOK_KJ.congr _ _ _ hKt0 hm' hg' hd' hbe'
    refine hoareG_gkDec hfs satw_start_cl (by exact kOK_KJ.congr _ _ _ hk4 rfl rfl rfl rfl)
      fun sv st5 hk5 hsh5 => ?_
    obtain ⟨ss, rfl⟩ := val_of_shapeEq_one' hsh5
    refine hoareG_seq (R := fun ro t => ro = none ∧ KJ 0 t ∧ _) (hoareG_gkStOther hfs
      (by exact kOK_KJ.congr _ _ _ hk5 rfl rfl rfl rfl) (j := 15) rfl (by simp [evDriverSlots])
      (by decide) (by decide) (by decide) (fun v hv => ev_op_word hv))
      (fun r t _ hr _ h => absurd h.1 hr) (hoareG_pt fun t6 h6 => ?_)
    refine hoareG_seq (R := fun ro t => ro = none ∧ KJ 0 t ∧ _) (hoareG_gkStOut hfs h6.2.1
      (x := nn) hnn (fun v hv => ?_)) (fun r t _ hr _ h => absurd h.1 hr)
      (hoareG_pt fun t7 h7 => hfin t7 h7.2.1)
    rw [ev_lv_locals h6.2.2, Struct.ev_lv_set_ne _ _ (by decide)] at hv
    have hlk : ∀ (X : State σ), X.locals.lookup (nm "n") = some (.val (.word nn)) →
        ev X (lv (nm "n")) = some v → v = .val (.word nn) := by
      intro X hX hvX
      have : ev X (lv (nm "n")) = some (.val (.word nn)) := hX
      rw [this] at hvX
      exact (Option.some.inj hvX).symm
    exact hlk _ (lk_set_self _ _ _) hv

theorem rz_gc : gc gE true Struct.rz = some true := by decide +kernel
theorem revFin_gc : gc gE false revFin = some true := by decide +kernel

end steps

/-- **`op_return`'s bounded step spec.** -/
theorem j_op_return : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_return") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_return) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 568) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [retBody_eq]
  have ha0 : act s0 = 1 := by unfold act; rw [if_pos hrdy]
  refine ret_core hfs hP hk0 fun t ht => ?_
  refine hoareG_seq (R := fun ro t => ro = none ∧
      GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs 1 t)
    (hoareG_gkStRun hfs ha0 ht) (fun r t _ hr _ h => absurd h.1 hr) ?_
  exact hoareG_pt fun u hu => gc_sound kOK_KJ (callSem_gE hfs) _ true true rz_gc u hu.2

/-- **`op_revert`'s bounded step spec.** -/
theorem j_op_revert : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_revert") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_revert) :=
    declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 569) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [revBody_eq]
  refine ret_core hfs hP hk0 fun t ht => ?_
  exact gc_sound kOK_KJ (callSem_gE hfs) _ false true revFin_gc t ht


end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_return
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_revert
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkStOther
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkStRun
#print axioms InitECandidate.Solver.MemSafe.Frames.ret_core
