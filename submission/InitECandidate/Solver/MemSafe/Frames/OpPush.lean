import InitECandidate.Solver.MemSafe.Frames.DispChkA
import InitECandidate.Solver.MemSafe.Ops2.Calldataload
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_push` at its argument-guarded field type (frames13, task 1)

```
if nbytes == 0 { charge_gas(2); } else { charge_gas(3); }
var mark = heap_mark(); var tmp = alloc(32);
buffer_read(lds (ev + 48), lds (ev + 56), lds (ev + 0) + 1, nbytes, tmp);
var v = u256_from_be(tmp, nbytes); heap_release(mark);
stack_push(v); pc_add(1 + nbytes); return 0;
```
`buffer_read`'s `bufArg 3 1 0` needs `nbytes` bytes at `tmp` (an `alloc(32)` block): `nbytes ≤ 32`,
which `OpStepP` provides.

* **`gk_opStepP`**: `gk_opStepB` for `OpStepP` (the body proof gets the argument `w ≤ 32` as the
  value of the parameter);
* `hoareG_gkCall1` (one checker-accepted call, no continuation), **`hoareG_gkIteC`**
  (`if c { f1(a1) } else { f2(a2) }; k` with both calls accepted to the same status);
* **`j_op_push : OpStepP σ guestCtx guestHooksR (nm "op_push")`**.
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

section gen
variable {X : Ctx 64} {H : Hooks σ}

/-- **`gk_opStepB` for the argument-guarded `OpStepP`**: the body proof gets the parameter's
value `w ≤ 32`. -/
theorem gk_opStepP (hC : X.code.lookup = guestCode) (hH : HooksLawful guestC H) {gw : List MlS}
    {f x : MlS} {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64} {sh : ShapeHOL}
    (hcode : guestCode f = some (ps, body, sh)) (hps : oneParam x ps = true) {b : Bool}
    (hbody : ∀ w : BitVec 64, w.toNat ≤ 32 → ∀ (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
      (fs : List Frame) (e c : BitVec 64) (rest : List Frame), fs = (e, c) :: rest → Ready s0 →
        s0.locals.lookup x = some (.val (.word w)) → GK H gw Γ0 s0 p0 fs 0 s0 →
        HoareG σ X (fun t => t = s0) body (GQ (GK H gw Γ0 s0 p0 fs) b)) :
    OpStepP σ X H f := by
  obtain rfl := oneParam_eq hps
  intro M hM w hw vs body' callee rs hl s0 hs0 hloc r hr hg hna Γ hG ⟨hvs, hpre⟩
  subst hvs
  obtain ⟨⟨⟨fs, hch, hE⟩, hΦM, hrdy⟩, hJ⟩ := hpre
  rw [hC] at hl
  obtain ⟨ps', hps', hpar⟩ := lookupCode_k hl
  rw [hcode] at hps'
  simp only [Option.some.injEq, Prod.mk.injEq] at hps'
  obtain ⟨rfl, rfl, -⟩ := hps'
  have hx : s0.locals.lookup x = some (.val (.word w)) := by
    rw [hloc]; exact hpar 0 (x, .one) _ rfl rfl
  obtain ⟨e, c, rest, hfs, -, -, -⟩ := hch.chain
  obtain ⟨p, hps0, -⟩ := id hG
  have hk0 : GK H gw Γ s0 p fs 0 s0 :=
    ⟨⟨hJ, Γ, p, runT_refl hG hps0, hch, hE⟩, by omega, Or.inl rfl⟩
  have H0 := hbody w hw Γ s0 p fs e c rest hfs hrdy hx hk0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  obtain ⟨⟨hJt, Γ', p', hrun, hch', hE'⟩, hΦt, hactt⟩ := H0.2 r rfl hna
  have ha0 : act s0 = 1 := by unfold act; rw [if_pos hrdy]
  refine ⟨Γ', hrun.2.2.2.2.2.1, ⟨fun v hv => ?_, fun v hv => ?_⟩, fun _ _ => hJt, fun _ _ => hJt,
    fun _ _ => keepH_of_runT hrun, fun _ _ => keepH_of_runT hrun,
    fun _ _ => rootK_of_same hch.chain hch'.chain, fun _ _ => rootK_of_same hch.chain hch'.chain,
    fun _ _ => bkeep_of_runT hrun, fun _ _ => bkeep_of_runT hrun⟩
  · subst hv
    exact ⟨⟨fs, hch', hE'⟩, by simp only [rbd] at hΦt; omega⟩
  · subst hv
    refine ⟨⟨fs, hch', hE'⟩, ?_⟩
    simp only [rbd] at hΦt
    rcases hactt with h | h
    · rw [h, ha0]; omega
    · omega

end gen

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- **One checker-accepted call `f(args)`** (no continuation). -/
theorem hoareG_gkCall1 (hfs : fs = (e, c) :: rest) {b b1 : Bool} {f : MlS}
    {args : List (ExpHOL 64)} (hcl : callCl gE b f args = some b1)
    {u0 : State σ} (hu : KJ (bd b) u0) :
    HoareG σ guestCtx (fun t => t = u0) (callD f args)
      (fun ro t => (ro = none → t.locals = u0.locals ∧ KJ (bd b1) t) ∧
        ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t) := by
  obtain ⟨R, hRf, hstep⟩ := callSem_gE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs b b1 f args hcl
  refine hoareG_callD hRf ?_ ?_
  · intro u _ hu' vs hvs callee v st hR _
    subst hu'
    have hk1 := hstep u hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    exact ⟨fun _ => ⟨rfl, kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl⟩, fun r hr => by cases hr⟩
  · intro u _ hu' vs hvs callee r st hR _ habn
    subst hu'
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have := hstep u hu vs hvs callee r st hR (good_of_abn habn) hna
    rw [cbd_abn habn] at this
    rw [rbd_abn habn]
    exact kok_loc kOK_KJ this _

/-- **`if c { f1(a1) } else { f2(a2) }; k`** with both calls accepted to the same status. -/
theorem hoareG_gkIteC (hfs : fs = (e, c) :: rest) {b b1 : Bool} {f1 f2 : MlS}
    {a1 a2 : List (ExpHOL 64)} (h1 : callCl gE b f1 a1 = some b1)
    (h2 : callCl gE b f2 a2 = some b1) {u0 : State σ} (hu : KJ (bd b) u0) {cnd : ExpHOL 64}
    {k : ProgHOL 64} {b' : Bool}
    (hk : ∀ t : State σ, t.locals = u0.locals → KJ (bd b1) t →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (.ite cnd (callD f1 a1) (callD f2 a2)) k)
      (GQ (KJ) b') :=
  hoareG_seq (R := fun ro t => (ro = none → t.locals = u0.locals ∧ KJ (bd b1) t) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_ite (hoareG_pre (hoareG_gkCall1 hfs h1 hu) fun _ _ h => h.1)
      (hoareG_pre (hoareG_gkCall1 hfs h2 hu) fun _ _ h => h.1))
    (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pt fun t ht => hk t (ht.1 rfl).1 (ht.1 rfl).2)

end steps

/-! ## `op_push` -/

def opPushTail : ProgHOL 64 :=
  .seq (callD (nm "stack_push") [lv (nm "v")])
    (.seq (callD (nm "pc_add") [.op .add [cw 1, lv (nm "nbytes")]]) Struct.rz)

def opPushBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "nbytes")) (cw 0)) (callD (nm "charge_gas") [cw 2])
      (callD (nm "charge_gas") [cw 3]))
    (.decCall (nm "mark") .one (nm "heap_mark") []
      (.decCall (nm "tmp") .one (nm "alloc") [cw 32]
        (.seq (callD (nm "buffer_read")
            [gLoad "ev" 48, gLoad "ev" 56, .op .add [gLoad "ev" 0, cw 1], lv (nm "nbytes"),
              lv (nm "tmp")])
          (.decCall (nm "v") (shK 4) (nm "u256_from_be") [lv (nm "tmp"), lv (nm "nbytes")]
            (.seq (callD (nm "heap_release") [lv (nm "mark")]) opPushTail)))))

theorem opPushBody_eq : (declPair Guest.Software.guestFn_op_push).2.2 = opPushBody := by
  conv => lhs; cbv
  rfl

theorem opPushParams : oneParam (nm "nbytes") (declPair Guest.Software.guestFn_op_push).2.1 = true := by
  have h : (declPair Guest.Software.guestFn_op_push).2.1 =
      [("nbytes", Flapjack.Shape.one)].map Flapjack.Pancake.PanLang.paramToHOL := rfl
  rw [h]
  simp only [List.map_cons, List.map_nil, Flapjack.Pancake.PanLang.paramToHOL,
    Flapjack.Pancake.PanLang.shapeToHOL]
  decide +kernel

theorem opPushTail_gc : gc gE true opPushTail = some true := by decide +kernel
theorem chg2_cl : callCl gE false (nm "charge_gas") [cw 2] = some true := by decide +kernel

theorem bufOK_32 {Γ : Gam} {p : Ptrs} {q : Nat} {w : BitVec 64} (hw : w.toNat ≤ 32)
    (h : BufOK guestC Γ p q (BitVec.ofNat 64 32).toNat) : BufOK guestC Γ p q (1 * w.toNat + 0) := by
  intro a ⟨h1, h2, h3⟩
  have h32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
  exact h a ⟨h1, h2, by rw [h32]; omega⟩

/-- **`op_push`'s argument-guarded step spec.** -/
theorem j_op_push : OpStepP σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_push") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_push) :=
    declPair_valid (List.getElem_mem (n := 514) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepP guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode opPushParams (b := true) ?_
  intro w hw Γ0 s0 p0 fs e c rest hfs hrdy hnb hk0
  rw [opPushBody_eq]
  refine hoareG_gkIteC hfs chg2_cl chg3_cl hk0 fun t1 hl1 hk1 => ?_
  refine hoareG_winMark hfs hk1 fun st2 m Γ1 pm hW2 => ?_
  refine hoareG_winAlloc hfs hW2 (ev_cw _ 32) fun st3 q pc3 hW3 hq8 hbuf => ?_
  have hnb3 : ev (setVarHOLFinite (nm "tmp") (.val (.word q))
      { st3 with locals := (setVarHOLFinite (nm "mark") (.val (.word m))
        { st2 with locals := t1.locals }).locals }) (lv (nm "nbytes")) =
      some (.val (.word w)) := by
    rw [Struct.ev_lv_set_ne _ _ (by decide)]
    show ev (setVarHOLFinite (nm "mark") (.val (.word m)) { st2 with locals := t1.locals })
      (lv (nm "nbytes")) = _
    rw [Struct.ev_lv_set_ne _ _ (by decide)]
    show t1.locals.lookup (nm "nbytes") = _
    rw [hl1]
    exact hnb
  refine hoareG_winCall hfs rfl rfl br_mem br_fp hW3 (fun vs hvs => ?_)
    fun t4 hl4 ⟨Γ4, p4, hW4⟩ => ?_
  · exact argsOK_br hvs (n := w) (q := q) hnb3 (Struct.ev_lv_set _ _ _) (bufOK_32 hw hbuf)
  refine hoareG_winDec hfs rfl rfl ub_mem ub_fp hW4
    (fun vs hvs => argsOK_any (by simp [ubSg]) (by rw [evs_len hvs]; rfl))
    fun t5 hl5 v5 hsh5 ⟨Γ5, p5, hW5⟩ => ?_
  have hmark : ev (setVarHOLFinite (nm "v") v5 t5) (lv (nm "mark")) = some (.val (.word m)) := by
    rw [Struct.ev_lv_set_ne _ _ (by decide), ev_lv_locals (hl5.trans hl4),
      Struct.ev_lv_set_ne _ _ (by decide)]
    exact Struct.ev_lv_set _ _ _
  refine hoareG_winRel hfs hW5 hmark fun t6 hl6 hk6 => ?_
  exact hoareG_pt fun t7 h7 => by
    subst h7
    exact gc_sound kOK_KJ (callSem_gE hfs) _ true true opPushTail_gc _ hk6

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gk_opStepP
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkIteC
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_push
