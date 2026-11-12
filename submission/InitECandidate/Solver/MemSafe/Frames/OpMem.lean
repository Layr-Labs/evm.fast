import InitECandidate.Solver.MemSafe.Frames.GkMemJL
import InitECandidate.Solver.MemSafe.Frames.OpStepB
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Memory handlers on `GK` (frames12, task 2)

Shared steps for a handler body proof via `gk_opStepB`:

* `hoareG_gkCall` / `hoareG_gkDec`: `f(args);` / `var x = f(args); k` for a callee the gas checker
  accepts (`callCl gE b f args = some b'`, through `callSem_gE`);
* `hoareG_gkCwm`: `charge_with_memory(base, start, size);` (through `gk_cwm`);
* the tail: `gc_sound` on the rest when the checker accepts it.

Handlers: **`j_op_mload`** (`stack_pop`, `charge_with_memory`, then a checker-accepted tail:
`u256_from_be` reads memory through unconstrained parameters).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-! ## Code pieces -/

/-- `<n, 0, 0, 0>` -/
def c4w (n : Nat) : ExpHOL 64 := .rstruct [cw n, cw 0, cw 0, cw 0]

/-- `MEM + x` -/
def memAtX (x : String) : ExpHOL 64 := .op .add [Struct.evL 24, lv (nm x)]

theorem ev_c4w (s : State σ) (n : Nat) :
    ev s (c4w n) = some (wv [BitVec.ofNat 64 n, BitVec.ofNat 64 0, BitVec.ofNat 64 0,
      BitVec.ofNat 64 0]) :=
  ev_rstruct (evs_cons (ev_cw _ n) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0)
    (evs_cons (ev_cw _ 0) evs_nil))))

/-! ## Steps -/

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

theorem kOK_KJ : KOK (KJ) := kOK_gk Hooks.frameCfg_guestHooksR.hooks

/-- **`var x = f(args); k`** for a callee the checker accepts. -/
theorem hoareG_gkDec (hfs : fs = (e, c) :: rest) {b b1 : Bool} {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} (hcl : callCl gE b f args = some b1)
    {u0 : State σ} (hu : KJ (bd b) u0) {b' : Bool}
    (hk : ∀ (v : ValueHOL 64) (st : State σ), KJ (bd b1) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k) (GQ (KJ) b') := by
  obtain ⟨R, hRf, hstep⟩ := callSem_gE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs b b1 f args hcl
  refine hoareG_decCall hRf ?_ ?_
  · intro u _ hu' vs hvs callee v st hR _ hsh
    subst hu'
    have hk1 := hstep u hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    exact hoareG_conseq (hk v st hk1 hsh) (fun _ _ h => h) fun r t _ _ hq => gq_loc kOK_KJ hq _
  · intro u _ hu' vs hvs callee r st hR _ habn
    subst hu'
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have := hstep u hu vs hvs callee r st hR (good_of_abn habn) hna
    rw [cbd_abn habn] at this
    rw [rbd_abn habn]
    exact kok_loc kOK_KJ this _

/-- **`charge_with_memory(base, start, size); k`** from `GK d`: `k` runs from `GK (d + base)`
with the range below the new `MEM_LEN` (when `size ≠ 0`) and `EV_MEM` kept. -/
theorem hoareG_gkCwm (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) {d : Nat}
    {xb xs xz : ExpHOL 64} {k : ProgHOL 64} {P : State σ → Prop}
    {base a0 a1 a2 a3 b0 b1 b2 b3 : BitVec 64}
    (hP0 : ∀ u, P u → KJ d u ∧ ev u xb = some (.val (.word base)) ∧
      ev u xs = some (wv [a0, a1, a2, a3]) ∧ ev u xz = some (wv [b0, b1, b2, b3]))
    {b' : Bool}
    (hk : HoareG σ guestCtx (fun t => ∃ u, P u ∧ t.locals = u.locals ∧
        KJ (d + base.toNat) t ∧
        (Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
          (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld t.memory e 32).toNat) ∧
        fld t.memory e 24 = fld u.memory e 24) k (GQ (KJ) b')) :
    HoareG σ guestCtx P (.seq (callD (nm "charge_with_memory") [xb, xs, xz]) k) (GQ (KJ) b') := by
  refine hoareG_seq (R := fun ro t => (ro = none → ∃ u, P u ∧ t.locals = u.locals ∧
        KJ (d + base.toNat) t ∧
        (Struct.isZeroF b0 b1 b2 b3 = 0 → (Struct.satWordF a0 a1 a2 a3).toNat +
          (Struct.satWordF b0 b1 b2 b3).toNat ≤ (fld t.memory e 32).toNat) ∧
        fld t.memory e 24 = fld u.memory e 24) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD (funSpec_cwm (σ := σ)) ?_ ?_) (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pre hk fun t _ h => h.1 rfl)
  · intro u _ hu vs hvs callee v st hR _
    obtain ⟨hku, hb, hs, hz⟩ := hP0 u hu
    rw [evs_cons hb (evs_cons hs (evs_cons hz evs_nil))] at hvs
    simp only [Option.some.injEq] at hvs; subst hvs
    obtain ⟨h1, -⟩ := gk_cwm hfs hP hku hR (by simp [Good]) (not_abortive_ret v)
    obtain ⟨hk2, hz2, hm2⟩ := h1 v rfl
    exact ⟨fun _ => ⟨u, hu, rfl, kOK_KJ.congr _ _ _ hk2 rfl rfl rfl rfl, hz2, hm2⟩,
      fun r hr => by cases hr⟩
  · intro u _ hu vs hvs callee r st hR _ habn
    obtain ⟨hku, hb, hs, hz⟩ := hP0 u hu
    rw [evs_cons hb (evs_cons hs (evs_cons hz evs_nil))] at hvs
    simp only [Option.some.injEq] at hvs; subst hvs
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have h2 := (gk_cwm hfs hP hku hR (good_of_abn habn) hna).2 fun v => Struct.abn_ne_ret habn v
    have h3 := kOK_KJ.congr _ _ (emptyLocalsHOLFinite st) h2 rfl rfl rfl rfl
    rw [rbd_abn habn]
    exact kOK_KJ.mono _ _ _ h3 (Nat.zero_le _)

end steps

/-- **A frame-memory buffer is a valid buffer argument**: `[b, b + n)` inside
`[MEM, MEM + MEM_LEN)` of a `Γ` EV object `o` (by `EvSM`, the frame memory object covers it). -/
theorem memBuf_ok {Γ : Gam} {u : State σ} {p : Ptrs}
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hp : ptrsOf u = some p) {o : Obj}
    (ho : o ∈ Γ) (hot : o.ty = tEV) {b n : Nat}
    (hb : (fld u.memory o.base 24).toNat ≤ b)
    (hn : b + n ≤ (fld u.memory o.base 24).toNat + (fld u.memory o.base 32).toNat) :
    BufOK guestC Γ p b n ∧
      (fld u.memory o.base 24).toNat + (fld u.memory o.base 32).toNat ≤ scratchEnd := by
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
  refine ⟨fun a ha => Or.inl (Struct.overlap_scell hord hL hmo (fun k => ?_) ?_ ?_ ha), by omega⟩
  · rw [hmot]; exact (Shards.evCfg_upg []).mem_scalar k
  · unfold Obj.lo; rw [hmob']; exact hb
  · unfold Obj.hi; rw [hmob']; omega

section steps2
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- **`f(args); k`** for a plain-summary callee (`Summ`, no `prot` writes) whose (buffer)
arguments are valid for the chain's typing: `k` runs from `GK d` with the running EV's `prot` slots
unchanged. -/
theorem hoareG_gkSumm (hfs : fs = (e, c) :: rest) {f : MlS} {sg : Sig} (hgw : sg.gw = [])
    (hS : Summ σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg) (hfp : KeepsFp σ guestCtx f)
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {P : State σ → Prop} {d : Nat} {b' : Bool}
    (hP0 : ∀ u, P u → KJ d u ∧ ∀ vs, evs u args = some vs → ∀ Γ1 p1,
      G guestC (Hooks.guestHooksR (σ := σ)) Γ1 u → ptrsOf u = some p1 →
      ChainL guestC tEV tCK Γ1 u fs → ArgsOK guestC Γ1 p1 sg.params vs)
    (hk : HoareG σ guestCtx (fun t => ∃ u, P u ∧ t.locals = u.locals ∧ KJ d t ∧
        ∀ j ∈ evProtSlots, fld t.memory e (8 * j) = fld u.memory e (8 * j)) k (GQ (KJ) b')) :
    HoareG σ guestCtx P (.seq (callD f args) k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have key : ∀ u, P u → ∀ vs, evs u args = some vs → ∀ callee r st,
      (SumRelX guestC Hooks.guestHooksR sg (fun _ _ _ => True)
        (fun vs s Γ a => ProtCell guestC Γ a ∧ False) (fun _ _ _ _ _ _ => True) vs
        (callEntryStateHOLFinite u callee) r st ∧
        (Good (some r) → ¬ Abortive r →
          st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)) →
      Good (some r) → ¬ Abortive r →
      KJ d st ∧ ∀ j ∈ evProtSlots, fld st.memory e (8 * j) = fld u.memory e (8 * j) := by
    intro u hu vs hvs callee r st ⟨hR, hfk⟩ hg hna
    obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, hact0⟩ := (hP0 u hu).1
    have hargs := (hP0 u hu).2 vs hvs Γ1 p1 hrun.2.2.2.2.2.1 hrun.2.1 hch
    obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -, hkE, -⟩ := kc_coreK hF hfs (sg := sg)
      (ks := []) (fun g h => by rw [hgw] at h; cases h) (by rw [hgw]; simp)
      (by rw [hgw]; simp [jrOut_iff]) (by decide) (by decide) (by decide) hrun hch hE hJ hR
      (hfk hg hna) hg hna hargs trivial (fun a _ h => h.elim)
      (Or.inl ⟨by decide, by decide⟩) (Or.inl ⟨by decide, by decide⟩)
    refine ⟨⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, ?_⟩, fun j hj => hkE j hj (by simp)⟩
    rw [hact2]; rcases hact0 with h | h
    · exact Or.inl h
    · exact Or.inr (by omega)
  refine hoareG_seq (R := fun ro t => (ro = none → ∃ u, P u ∧ t.locals = u.locals ∧ KJ d t ∧
        ∀ j ∈ evProtSlots, fld t.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec hS)) hfp) ?_ ?_)
    (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩) (hoareG_pre hk fun t _ h => h.1 rfl)
  · intro u _ hu vs hvs callee v st hR _
    obtain ⟨hk1, hk2⟩ := key u hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    exact ⟨fun _ => ⟨u, hu, rfl, kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl, hk2⟩, fun r hr => by cases hr⟩
  · intro u _ hu vs hvs callee r st hR _ habn
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    obtain ⟨hk1, -⟩ := key u hu vs hvs callee _ st hR (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact kOK_KJ.mono _ _ _ (kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl) (Nat.zero_le _)

/-- **`var x = f(args); k`** for a pure callee (`Struct.PureR`): `k` runs from the same memory and
globals, with the returned value. -/
theorem hoareG_kPure {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Rv : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop} (hpf : Struct.PureR σ guestCtx f Rv)
    {P : State σ → Prop} {b' : Bool}
    (hk : ∀ u, P u → ∀ vs, evs u args = some vs → ∀ callee v (st : State σ),
      st.memory = u.memory → st.globals = u.globals → st.memaddrs = u.memaddrs → st.be = u.be →
      Rv vs (callEntryStateHOLFinite u callee) v → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u.locals }) k
        (GQ (KJ) b')) :
    HoareG σ guestCtx P (.decCall rn sh f args k) (GQ (KJ) b') := by
  refine hoareG_decCall (FunSpec.and hpf (funSpec_dom f)) ?_ ?_
  · intro u _ hu vs hvs callee v st ⟨hR, hd⟩ _ hsh
    obtain ⟨hm, hg, v', hv', hRv⟩ := hR (by simp [Good])
    cases hv'
    exact hoareG_conseq (hk u hu vs hvs callee v st hm hg hd.1 hd.2 hRv hsh) (fun _ _ h => h)
      (fun r t _ _ hq => gq_loc kOK_KJ hq _)
  · intro u _ hu vs hvs callee r st ⟨hR, _⟩ _ habn
    obtain ⟨-, -, v, hv, -⟩ := hR (abn_good habn)
    exact absurd hv (Struct.abn_ne_ret habn v)


/-- **`charge_gas(x); k`** with its value facts: `k` runs from `GK (d + a)` (`a` the amount), the
memory `chargeMem`, globals kept, and `a + 1 < 2^64` (from `Φ s0 < 2^64`). -/
theorem hoareG_gkCharge (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64) {x : ExpHOL 64}
    {k : ProgHOL 64} {P : State σ → Prop} {d : Nat} {a : BitVec 64} {b' : Bool}
    (hP0 : ∀ u, P u → KJ d u ∧ ev u x = some (.val (.word a)))
    (hk : HoareG σ guestCtx (fun t => ∃ u, P u ∧ t.locals = u.locals ∧ KJ (d + a.toNat) t ∧
        a.toNat + 1 < 2 ^ 64 ∧ a ≤ fld u.memory e 64 ∧ t.memory = chargeMem u.memory e a ∧
        t.globals = u.globals) k (GQ (KJ) b')) :
    HoareG σ guestCtx P (.seq (callD (nm "charge_gas") [x]) k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hspec := FunSpec.and (FunSpec.and (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec
    (charge_evSpec (σ := σ) guestCtx_code hF))) charge_fp) (charge_sumSpec guestCtx_code hF))
    (FunSpec.and (charge_spec (σ := σ) guestCtx_code) (funSpec_dom (σ := σ) (X := guestCtx) _))
  have key : ∀ u, P u → ∀ vs, evs u [x] = some vs → ∀ callee r st,
      (((SumRelX guestC Hooks.guestHooksR sg1n (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
        (fun vs s Γ a => ProtCell guestC Γ a ∧ PWrun tEV [8, 23] vs s Γ a) QCh vs
        (callEntryStateHOLFinite u callee) r st ∧
        (Good (some r) → ¬ Abortive r →
          st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)) ∧
        RCh guestC Hooks.guestHooksR vs (callEntryStateHOLFinite u callee) r st) ∧
        ((Good (some r) → ∃ e a, vs = [.val (.word a)] ∧
          gword (callEntryStateHOLFinite u callee) nmEv = some e ∧
          st.globals = (callEntryStateHOLFinite u callee).globals ∧
          ((r = .exception nmEvmErr (.val (.word 4)) ∧
              fld (callEntryStateHOLFinite u callee).memory e 64 < a ∧
              st.memory = (callEntryStateHOLFinite u callee).memory) ∨
            (r = .returned (.val (.word 0)) ∧ a ≤ fld (callEntryStateHOLFinite u callee).memory e 64 ∧
              st.memory = chargeMem (callEntryStateHOLFinite u callee).memory e a))) ∧
          (st.memaddrs = (callEntryStateHOLFinite u callee).memaddrs ∧
            st.be = (callEntryStateHOLFinite u callee).be))) →
      Good (some r) → ¬ Abortive r →
      KJ 0 st ∧ ∀ v, r = .returned v → KJ (d + a.toNat) st ∧ a.toNat + 1 < 2 ^ 64 ∧
        a ≤ fld u.memory e 64 ∧ st.memory = chargeMem u.memory e a ∧ st.globals = u.globals := by
    intro u hu vs hvs callee r st ⟨⟨⟨hR, hfk⟩, hΦR⟩, hC, _⟩ hg hna
    obtain ⟨hku, hx⟩ := hP0 u hu
    rw [evs_cons hx evs_nil] at hvs
    simp only [Option.some.injEq] at hvs; subst hvs
    obtain ⟨hb, hΦ1, hact1, hret⟩ := gk_charge hF hfs hku (evs_cons hx evs_nil) hR (hfk hg hna) hΦR hg hna
    obtain ⟨-, hΦ0, hact0⟩ := hku
    have hactF : act st = act s0 ∨ Phi st + 1 ≤ Phi s0 := by
      rw [hact1]; rcases hact0 with h | h
      · exact Or.inl h
      · exact Or.inr (by omega)
    refine ⟨⟨hb, by omega, hactF⟩, fun v hv => ?_⟩
    obtain ⟨a', ha', hΦa⟩ := hret v hv
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at ha'
    subst ha'
    have hpos : 1 ≤ Phi st := by
      obtain ⟨Γ2, p2, -, hch2, -⟩ := hb.2
      rw [phi_eq hch2.chain, hfs, wsum_cons]; have := wt_pos st.memory (e, c); omega
    obtain ⟨e', a'', hva, he', hgl, hcase⟩ := hC hg
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hva
    subst hva
    rcases hcase with ⟨hr, -, -⟩ | ⟨-, hle, hm⟩
    · rw [hv] at hr; cases hr
    have he'' : e' = e := by
      obtain ⟨Γ1, p1, -, hch1, -⟩ := (hP0 u hu).1.1.2
      obtain ⟨e1, c1, rest1, hfs1, he1, -, -⟩ := hch1.chain
      rw [hfs] at hfs1
      simp only [List.cons.injEq, Prod.mk.injEq] at hfs1
      obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs1
      exact Option.some.inj (he'.symm.trans he1)
    subst he''
    exact ⟨⟨hb, by omega, hactF⟩, by omega, hle, hm, hgl⟩
  refine hoareG_seq (R := fun ro t => (ro = none → ∃ u, P u ∧ t.locals = u.locals ∧
        KJ (d + a.toNat) t ∧ a.toNat + 1 < 2 ^ 64 ∧ a ≤ fld u.memory e 64 ∧
        t.memory = chargeMem u.memory e a ∧ t.globals = u.globals) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD hspec ?_ ?_) (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pre hk fun t _ h => h.1 rfl)
  · intro u _ hu vs hvs callee v st hR _
    obtain ⟨-, h2⟩ := key u hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    obtain ⟨hk1, h3, h4, h5, h6⟩ := h2 v rfl
    exact ⟨fun _ => ⟨u, hu, rfl, kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl, h3, h4, h5, h6⟩,
      fun r hr => by cases hr⟩
  · intro u _ hu vs hvs callee r st hR _ habn
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    obtain ⟨hk1, -⟩ := key u hu vs hvs callee _ st hR (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl

/-- **`extend_memory(x); k`**: from `GK d` with `x % 32 = 0` and no `2^40` overflow, `k` runs from
`GK d` with `MEM_LEN += x` and the other running-EV `prot` slots kept. -/
theorem hoareG_gkEm (hfs : fs = (e, c) :: rest) {x : ExpHOL 64} {k : ProgHOL 64}
    {P : State σ → Prop} {d : Nat} {X : BitVec 64} {b' : Bool}
    (hP0 : ∀ u, P u → KJ d u ∧ ev u x = some (.val (.word X)) ∧ X.toNat % 32 = 0 ∧
      (fld u.memory e 32).toNat + X.toNat ≤ 2 ^ 40)
    (hk : HoareG σ guestCtx (fun t => ∃ u, P u ∧ t.locals = u.locals ∧ KJ d t ∧
        (fld t.memory e 32).toNat = (fld u.memory e 32).toNat + X.toNat ∧
        ∀ j ∈ evProtSlots, j ∉ [4, 5] → fld t.memory e (8 * j) = fld u.memory e (8 * j))
      k (GQ (KJ) b')) :
    HoareG σ guestCtx P (.seq (callD (nm "extend_memory") [x]) k) (GQ (KJ) b') := by
  refine hoareG_seq (R := fun ro t => (ro = none → ∃ u, P u ∧ t.locals = u.locals ∧ KJ d t ∧
        (fld t.memory e 32).toNat = (fld u.memory e 32).toNat + X.toNat ∧
        ∀ j ∈ evProtSlots, j ∉ [4, 5] → fld t.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD (funSpec_em (σ := σ)) ?_ ?_) (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pre hk fun t _ h => h.1 rfl)
  · intro u _ hu vs hvs callee v st hR _
    obtain ⟨hku, hx, h32, hb⟩ := hP0 u hu
    rw [evs_cons hx evs_nil] at hvs
    simp only [Option.some.injEq] at hvs; subst hvs
    obtain ⟨-, hk1, hlen, hkeep⟩ := gk_em hfs hku h32 hb hR (by simp [Good]) (not_abortive_ret v)
    exact ⟨fun _ => ⟨u, hu, rfl, kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl, hlen, hkeep⟩,
      fun r hr => by cases hr⟩
  · intro u _ hu vs hvs callee r st hR _ habn
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    obtain ⟨hku, hx, h32, hb⟩ := hP0 u hu
    rw [evs_cons hx evs_nil] at hvs
    simp only [Option.some.injEq] at hvs; subst hvs
    obtain ⟨⟨v, hv⟩, -⟩ := gk_em hfs hku h32 hb hR (good_of_abn habn) hna
    exact absurd hv (Struct.abn_ne_ret habn v)

end steps2

/-! ## `op_mload` -/

def mloadTail : ProgHOL 64 :=
  .decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
    (.decCall (nm "v") (shK 4) (nm "u256_from_be") [memAtX "s", cw 32]
      (.seq (callD (nm "stack_push") [lv (nm "v")]) (.seq (callD (nm "pc_add") [cw 1]) Struct.rz)))

def mloadBody : ProgHOL 64 :=
  .decCall (nm "start") (shK 4) (nm "stack_pop") []
    (.seq (callD (nm "charge_with_memory") [cw 3, lv (nm "start"), c4w 32]) mloadTail)

theorem mloadBody_eq : (declPair Guest.Software.guestFn_op_mload).2.2 = mloadBody := by
  conv => lhs; cbv
  rfl

theorem mloadTail_gc : gc gE true mloadTail = some true := by decide +kernel

theorem pop_cl : callCl gE false (nm "stack_pop") [] = some false := by decide +kernel

/-- **`op_mload`'s bounded step spec** at `guestHooksR`. -/
theorem j_op_mload : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mload") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_mload) :=
    declPair_valid (List.getElem_mem (n := 510) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [mloadBody_eq]
  refine hoareG_gkDec hfs pop_cl hk0 fun v st hk1 hsh => ?_
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' hsh
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws
  refine hoareG_gkCwm (base := BitVec.ofNat 64 3) (a0 := a0) (a1 := a1) (a2 := a2) (a3 := a3)
    (b0 := BitVec.ofNat 64 32) (b1 := BitVec.ofNat 64 0) (b2 := BitVec.ofNat 64 0)
    (b3 := BitVec.ofNat 64 0) (d := 0) hfs hP ?_ ?_
  · intro u hu
    subst hu
    exact ⟨kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl, ev_cw _ 3, Struct.ev_lv_set _ _ _, ev_c4w _ 32⟩
  · refine hoareG_pt fun u ⟨u', _, _, hk2, _, _⟩ =>
      gc_sound kOK_KJ (callSem_gE hfs) _ true true mloadTail_gc u
        (kOK_KJ.mono _ _ _ hk2 (by decide))


/-! ## `op_mstore` -/

def mstoreTail : ProgHOL 64 := .seq (callD (nm "pc_add") [cw 1]) Struct.rz

def mstoreBody : ProgHOL 64 :=
  .decCall (nm "start") (shK 4) (nm "stack_pop") []
    (.decCall (nm "value") (shK 4) (nm "stack_pop") []
      (.seq (callD (nm "charge_with_memory") [cw 3, lv (nm "start"), c4w 32])
        (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
          (.seq (callD (nm "u256_to_be32") [lv (nm "value"), memAtX "s"]) mstoreTail))))

theorem mstoreBody_eq : (declPair Guest.Software.guestFn_op_mstore).2.2 = mstoreBody := by
  conv => lhs; cbv
  rfl

theorem mstoreTail_gc : gc gE true mstoreTail = some true := by decide +kernel

theorem scratchEnd_lt : scratchEnd < 2 ^ 64 := by decide

/-- The argument check of `u256_to_be32(value, MEM + s)` when `s + 32 ≤ MEM_LEN`. -/
theorem argsOK_memAt {Γ1 : Gam} {p1 : Ptrs} {t : State σ} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 t) (hp : ptrsOf t = some p1)
    (hch : ChainL guestC tEV tCK Γ1 t fs) {S : BitVec 64} {n : Nat}
    (hS : ev t (lv (nm "s")) = some (.val (.word S)))
    (hlen : S.toNat + n ≤ (fld t.memory e 32).toNat) {x0 : ValueHOL 64} {vs : List (ValueHOL 64)}
    (hvs : evs t [memAtX "s"] = some vs) :
    ∃ w, vs = [.val (.word w)] ∧ w.toNat = (fld t.memory e 24).toNat + S.toNat ∧
      BufOK guestC Γ1 p1 w.toNat n := by
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
  refine ⟨_, rfl, hadd, ?_⟩
  rw [hadd]
  exact (memBuf_ok hG hp ho hot (b := (fld t.memory o.base 24).toNat + S.toNat) (n := n)
    (by omega) (by omega)).1

/-- **`op_mstore`'s bounded step spec** at `guestHooksR`. -/
theorem j_op_mstore : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mstore") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_mstore) :=
    declPair_valid (List.getElem_mem (n := 508) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStepB guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hP hk0
  rw [mstoreBody_eq]
  refine hoareG_gkDec hfs pop_cl hk0 fun v st hk1 hsh => ?_
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' hsh
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hws
  refine hoareG_gkDec hfs pop_cl
    (u0 := setVarHOLFinite (nm "start") (wv [a0, a1, a2, a3]) { st with locals := s0.locals })
    (kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl) fun v' st' hk2 hsh' => ?_
  obtain ⟨ws', hws', rfl⟩ := eq_wv_of_shapeEq' hsh'
  obtain ⟨v0, v1, v2, v3, rfl⟩ := Struct.wv4 hws'
  refine hoareG_gkCwm (base := BitVec.ofNat 64 3) (a0 := a0) (a1 := a1) (a2 := a2) (a3 := a3)
    (b0 := BitVec.ofNat 64 32) (b1 := BitVec.ofNat 64 0) (b2 := BitVec.ofNat 64 0)
    (b3 := BitVec.ofNat 64 0) (d := 0) hfs hP ?_ ?_
  · intro u hu
    subst hu
    refine ⟨kOK_KJ.congr _ _ _ hk2 rfl rfl rfl rfl, ev_cw _ 3, ?_, ev_c4w _ 32⟩
    rw [Struct.ev_lv_set_ne _ _ (by decide)]
    exact Struct.ev_lv_set _ _ _
  refine hoareG_kPure (Struct.pure_sat_word guestCtx_code) fun u ⟨u1, hu1, hloc, hk3, hlen, hmem⟩
    vs hvs callee sv st2 hm hg hd hbe hRv _ => ?_
  subst hu1
  have hstart : ev u (lv (nm "start")) = some (wv [a0, a1, a2, a3]) := by
    show u.locals.lookup _ = _
    rw [hloc, lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  have hvalue : ev u (lv (nm "value")) = some (wv [v0, v1, v2, v3]) := by
    show u.locals.lookup _ = _
    rw [hloc]
    exact lk_set_self _ _ _
  rw [evs_cons hstart evs_nil] at hvs
  simp only [Option.some.injEq] at hvs; subst hvs
  have hsv := hRv a0 a1 a2 a3 rfl
  subst hsv
  have hlen' := hlen (by decide)
  refine hoareG_gkSumm hfs (sg := Helpers.sigU256ToBe32) rfl
    (Helpers.summ_u256_to_be32 Hooks.guestHooksR_lawful Helpers.tagSlots_guestC guestCtx_code
      (Rec.foldOK_guestR (σ := σ)).hal) (Wire.keepsFp_guest (by decide_cbv))
    (d := 0 + (BitVec.ofNat 64 3).toNat) ?_ ?_
  · intro t ht
    subst ht
    refine ⟨kOK_KJ.congr _ _ _ hk3 hm hg hd hbe, fun vs hvs Γ1 p1 hG hp hch => ?_⟩
    obtain ⟨x0, vs1, rfl, hx0, hvs1⟩ := evs_cons_inv hvs
    have hval' : ev (setVarHOLFinite (nm "s") (.val (.word (Struct.satWordF a0 a1 a2 a3)))
        { st2 with locals := u.locals }) (lv (nm "value")) = some (wv [v0, v1, v2, v3]) := by
      rw [Struct.ev_lv_set_ne _ _ (by decide)]; exact hvalue
    rw [hval'] at hx0; cases hx0
    have hlen'' : (Struct.satWordF a0 a1 a2 a3).toNat + 32 ≤ (fld u.memory e 32).toNat := hlen'
    obtain ⟨w, rfl, -, hbuf⟩ := argsOK_memAt hfs hG hp hch (Struct.ev_lv_set _ _ _)
      (n := 32) (by
        show _ ≤ (fld st2.memory e 32).toNat
        rw [hm]; exact hlen'') (x0 := wv [v0, v1, v2, v3]) hvs1
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | i
    · simp [Helpers.sigU256ToBe32] at hpt; subst hpt; trivial
    · simp [Helpers.sigU256ToBe32] at hpt hv; subst hpt; subst hv; exact ⟨w, rfl, hbuf⟩
    · simp [Helpers.sigU256ToBe32] at hpt
  · refine hoareG_pt fun t ⟨_, _, _, hk4, _⟩ =>
      gc_sound kOK_KJ (callSem_gE hfs) _ true true mstoreTail_gc t
        (kOK_KJ.mono _ _ _ hk4 (by decide))

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkDec
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkCwm
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_mload
#print axioms InitECandidate.Solver.MemSafe.Frames.memBuf_ok
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkSumm
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_kPure
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_mstore
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkCharge
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkEm
