import InitECandidate.Solver.MemSafe.Ops4.GkStb
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# `op_mstore8` (the `OpStepB` field)

`pop start; pop value; charge_with_memory(3, start, 1); s = sat_word(start); st8 MEM + s, value & 255;
pc_add(1); return 0`. The charge part is `hoareG_gkCwm` as in `j_op_mstore`; the byte store is
`hoareG_gkStb` (Ops4/GkStb.lean) with the target cell an `SCell` of the frame-memory object.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The cells of a frame-memory range are `scalar` cells. -/
theorem memScell {Γ : Gam} {u : State σ} {p : Ptrs}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hp : ptrsOf u = some p) {o : Obj}
    (ho : o ∈ Γ) (hot : o.ty = tEV) {b n : Nat}
    (hb : (fld u.memory o.base 24).toNat ≤ b)
    (hn : b + n ≤ (fld u.memory o.base 24).toNat + (fld u.memory o.base 32).toNat) :
    ∀ a, Overlap b n a → SCell guestC Γ a := by
  obtain ⟨q, hq, hord, hL, -, -, -, hW⟩ := id hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  have hsm := Hooks.guestHooksR_ev.get Γ u o ho hot (hW o ho)
  obtain ⟨-, ⟨h1, -, -, mo, hmo, hmob, hmot, hsz⟩⟩ := hsm
  have hbnd := (Struct.obj_bounds hord hL hmo).2.1
  have hmob' : mo.base = fld u.memory o.base 24 := hmob
  have h1' : (fld u.memory o.base 32).toNat ≤ (fld u.memory o.base 40).toNat := h1
  have hsz' : (fld u.memory o.base 40).toNat ≤ mo.size := hsz
  unfold Obj.hi at hbnd
  rw [hmob'] at hbnd
  intro a ha
  refine Struct.overlap_scell hord hL hmo (fun k => ?_) ?_ ?_ ha
  · rw [hmot]; exact (Shards.evCfg_upg []).mem_scalar k
  · unfold Obj.lo; rw [hmob']; exact hb
  · unfold Obj.hi; rw [hmob']; omega

/-- The byte `MEM + S` lies in the frame memory: the word-aligned cell is an `SCell`. -/
theorem scell_memAt {Γ1 : Gam} {p1 : Ptrs} {t : State σ} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 t) (hp : ptrsOf t = some p1)
    (hch : ChainL guestC tEV tCK Γ1 t fs) {S : BitVec 64}
    (hS : ev t (lv (nm "s")) = some (.val (.word S)))
    (hlen : S.toNat + 1 ≤ (fld t.memory e 32).toNat) {w : BitVec 64}
    (hw : ev t (memAtX "s") = some (.val (.word w))) :
    SCell guestC Γ1 (panByteAlignHOL w) := by
  obtain ⟨y, z, hy, hz, hweq⟩ := ev_add2_inv hw
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
  subst hweq
  have hal := alignC_toNat (rd t.memory (o.base + BitVec.ofNat 64 24) + S)
  refine memScell hG hp ho hot (b := (fld t.memory o.base 24).toNat + S.toNat) (n := 1)
    (by omega) (by omega) _ ?_
  refine ⟨by omega, by omega, by omega⟩


def mstore8Body : ProgHOL 64 :=
  .decCall (nm "start") (shK 4) (nm "stack_pop") []
    (.decCall (nm "value") (shK 4) (nm "stack_pop") []
      (.seq (callD (nm "charge_with_memory") [cw 3, lv (nm "start"), c4w 1])
        (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
          (.seq (.storeByte (memAtX "s") (.op .and [Struct.rf 0 "value", cw 255])) mstoreTail))))

theorem mstore8Body_eq : (declPair Guest.Software.guestFn_op_mstore8).2.2 = mstore8Body := by
  conv => lhs; cbv
  rfl

/-- **`op_mstore8`'s bounded step spec** at `guestHooksR`. -/
theorem j_op_mstore8 : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mstore8") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_mstore8) :=
    declPair_valid (List.getElem_mem (n := 509) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [mstore8Body_eq]
  refine hoareG_gkDec hfs pop_cl hk0 fun v st hk1 hsh => ?_
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' hsh
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws
  refine hoareG_gkDec hfs pop_cl
    (u0 := setVarHOLFinite (nm "start") (wv [a0, a1, a2, a3]) { st with locals := s0.locals })
    (kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl) fun v' st' hk2 hsh' => ?_
  obtain ⟨ws', hws', rfl⟩ := eq_wv_of_shapeEq' hsh'
  obtain ⟨v0, v1, v2, v3, rfl⟩ := Struct.wv4 hws'
  refine hoareG_gkCwm (base := BitVec.ofNat 64 3) (a0 := a0) (a1 := a1) (a2 := a2) (a3 := a3)
    (b0 := BitVec.ofNat 64 1) (b1 := BitVec.ofNat 64 0) (b2 := BitVec.ofNat 64 0)
    (b3 := BitVec.ofNat 64 0) (d := 0) hfs hP ?_ ?_
  · intro u hu
    subst hu
    refine ⟨kOK_KJ.congr _ _ _ hk2 rfl rfl rfl rfl, ev_cw _ 3, ?_, ev_c4w _ 1⟩
    rw [Struct.ev_lv_set_ne _ _ (by decide)]
    exact Struct.ev_lv_set _ _ _
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code) fun u ⟨u1, hu1, hloc, hk3, hlen, hmem⟩
    vs hvs callee sv st2 hm hg hd hbe hRv _ => ?_
  subst hu1
  have hstart : ev u (lv (nm "start")) = some (wv [a0, a1, a2, a3]) := by
    show u.locals.lookup _ = _
    rw [hloc, lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  rw [evs_cons hstart evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hsv := hRv a0 a1 a2 a3 rfl
  subst hsv
  have hlen' := hlen (by decide)
  refine hoareG_gkStb hfs (d := 0 + (BitVec.ofNat 64 3).toNat) ?_ ?_
  · intro t ht
    subst ht
    refine ⟨kOK_KJ.congr _ _ _ hk3 hm hg hd hbe, fun w hw Γ1 p1 hG hp hch => ?_⟩
    have hlen'' : (Struct.satWordF a0 a1 a2 a3).toNat + 1 ≤ (fld u.memory e 32).toNat := hlen'
    exact scell_memAt hfs hG hp hch (Struct.ev_lv_set _ _ _) (by
      show _ ≤ (fld st2.memory e 32).toNat
      rw [hm]; exact hlen'') hw
  · refine hoareG_pt fun t ⟨_, _, _, hk4, _⟩ =>
      gc_sound kOK_KJ (callSem_gE hfs) _ true true mstoreTail_gc t
        (kOK_KJ.mono _ _ _ hk4 (by decide))

end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.hoareG_gkStb
#print axioms InitECandidate.Solver.MemSafe.Ops4.scell_memAt
#print axioms InitECandidate.Solver.MemSafe.Ops4.j_op_mstore8
