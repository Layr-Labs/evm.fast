import InitECandidate.Solver.MemSafe.Struct.Run
import InitECandidate.Solver.MemSafe.Struct.Stack

/-!
# The EVM stack: `stack_push`

`sum_stack_push`: the summary of `stack_push(v)` (`guest/src/evm.pnk`). It writes `EV_STACK`,
`EV_SP` and `EV_STACK_CAP` of the running frame (`PWev T [1, 2, 29]`), the stack array, and —
when the stack is full and below 1024 entries — a fresh scratch array that becomes a new `Γ`
object (the old array stays in `Γ` as garbage). `PushQ`: a return increments `SP`; when
`SP < STACK_CAP` on entry there is no reallocation (`Γ`, the allocator state, `EV_STACK` and
`EV_STACK_CAP` unchanged) and the call returns — the fact `finish_child` needs (§2.4 hazard 1).

Hypotheses: `AllocSpec` of `scratch_alloc` and the plain summary of `memcpy`
(`[.bufArg 2 1 0, .any, .any]`).
-/

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

def sgPush : Sig := ⟨[.any], [], [], true⟩

/-- `memcpy(dst, src, n)`: `n` writable bytes at `dst`. -/
def sgMemcpy (gr : Bool) : Sig := ⟨[.bufArg 2 1 0, .any, .any], [], [], gr⟩

/-- What `stack_push` does. -/
def PushQ (T : STy) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ e, EvObj T Γ s e →
    ((∃ v, r = .returned v) → (fSP t.memory e).toNat = (fSP s.memory e).toNat + 1) ∧
    ((fSP s.memory e).toNat < (fCAP s.memory e).toNat → Γ' = Γ ∧ ptrsOf t = ptrsOf s ∧
      (∃ v, r = .returned v) ∧ fCAP t.memory e = fCAP s.memory e ∧
      fSTK t.memory e = fSTK s.memory e)

/-! ## Stack slots -/

theorem toNat_mul32 {x : BitVec 64} (h : x.toNat ≤ 1024) :
    (x * BitVec.ofNat 64 32).toNat = 32 * x.toNat := by
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide : 32 < 2 ^ 64),
    Nat.mod_eq_of_lt (by omega)]
  omega

/-- The words of stack slot `SP` lie in the stack object. -/
theorem stk_inSM {C : Cfg} {T : STy} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) (hot : o.ty = T.stk) {SP CAP : BitVec 64}
    (hsz : 32 * CAP.toNat ≤ o.size) (hsp : SP.toNat < CAP.toNat) (hcap : CAP.toNat ≤ 1024)
    {i : Nat} (hi : i < 4) :
    InSM T Γ (o.base + SP * BitVec.ofNat 64 32 + BitVec.ofNat 64 (8 * i)) := by
  have hb := (obj_bounds hord hL ho).2.1
  have h8 := (hL.1 o ho).1
  have hm := toNat_mul32 (x := SP) (by omega)
  unfold Obj.hi Obj.lo scratchEnd at *
  have e1 : (o.base + SP * BitVec.ofNat 64 32 + BitVec.ofNat 64 (8 * i)).toNat =
      o.base.toNat + 32 * SP.toNat + 8 * i := by
    rw [BitVec.toNat_add, BitVec.toNat_add, hm, BitVec.toNat_ofNat,
      Nat.mod_eq_of_lt (by omega : 8 * i < 2 ^ 64), Nat.mod_eq_of_lt (by omega),
      Nat.mod_eq_of_lt (by omega)]
  refine ⟨by rw [e1]; omega, o, ho, Or.inl hot, ?_, ?_⟩ <;> simp only [Obj.lo, Obj.hi] <;>
    rw [e1] <;> omega

/-- A 4-word store at stack slot `SP` changes only stack-object cells. -/
theorem stk_store {C : Cfg} {T : STy} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) (hot : o.ty = T.stk) {SP CAP : BitVec 64}
    (hsz : 32 * CAP.toNat ≤ o.size) (hsp : SP.toNat < CAP.toNat) (hcap : CAP.toNat ≤ 1024)
    {d : BitVec 64 → Prop} {inst : DecidablePred d} {m mem : Mem} {V : ValueHOL 64}
    (hV : shapeEqHOL (shK 4) (shapeOfHOLExact V) = true)
    (h : @panMemStoresHOL 64 _ (o.base + SP * BitVec.ofNat 64 32) (flattenHOL V) d inst m =
      some mem) : ModifiesOnly (InSM T Γ) m mem := by
  obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shapeEq hV
  have hf := stores_frame _ _ _ _ h
  rw [flattenHOL_wv, List.length_map, hl] at hf
  refine hf.mono fun c ⟨i, hi, hc⟩ => ?_
  rw [hc]
  exact stk_inSM hord hL ho hot hsz hsp hcap hi

/-! ## The tail: store and bump `SP` -/

section push
variable {C : Cfg} {H : Hooks σ} {T : STy}

/-- The state before the tail: `sp = SP`, `v = V`, a tracked typing `Γ2` containing the EV
object, `SP < STACK_CAP`, and (no growth) facts. -/
def PushMid (C : Cfg) (H : Hooks σ) (T : STy) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (PWs : BitVec 64 → Prop) (e : Obj) (SP CAP STK : BitVec 64) (V : ValueHOL 64)
    (t : State σ) : Prop :=
  t.locals.lookup (nm "sp") = some (.val (.word SP)) ∧ t.locals.lookup (nm "v") = some V ∧
    t.globals.lookup gEv = some (.val (.word e.base)) ∧
    ∃ Γ2 e2, Trk C H Γ0 s0 p0 PWs Γ2 t ∧ e2 ∈ Γ2 ∧ e2.base = e.base ∧ e2.ty = T.ev ∧
      EvSM T Γ2 t.memory e2 ∧ fSP t.memory e = SP ∧ SP.toNat < (fCAP t.memory e).toNat ∧
      (SP.toNat < CAP.toNat → Γ2 = Γ0 ∧ ptrsOf t = ptrsOf s0 ∧ fCAP t.memory e = CAP ∧
        fSTK t.memory e = STK)

theorem cells_base {e e2 : Obj} (h : e2.base = e.base) (k : Nat) : e2.cell k = e.cell k := by
  unfold Obj.cell; rw [h]

theorem fields_of_inSM {C : Cfg} {T : STy} (hE : EvCfg C T) {p : Ptrs} {Γ : Gam}
    (hord : p.Ordered) (hL : Layout C p Γ) {e : Obj} (he : e ∈ Γ) (het : e.ty = T.ev) {m m' : Mem}
    (hmod : ModifiesOnly (InSM T Γ) m m') : ∀ a, SMCell e a → m' a = m a :=
  fun a ha => hmod a (prot_not_inSM hE hord hL (smCell_prot hE hL he het ha))

/-- The stack store keeps `PushMid`. -/
theorem pushMid_store (hH : HooksLawful C H) (hE : EvCfg C T) (hK : EvHook C H T) {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {PWs : BitVec 64 → Prop} {e : Obj} {SP CAP STK : BitVec 64}
    {V : ValueHOL 64} (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0)
    (hV : shapeEqHOL (shK 4) (shapeOfHOLExact V) = true) {u : State σ}
    (hm : PushMid C H T Γ0 s0 p0 PWs e SP CAP STK V u) {w : BitVec 64} {v : ValueHOL 64}
    {mem : Mem} (hw : ev u (stkA (lv (nm "sp"))) = some (.val (.word w)))
    (hv : ev u (lv (nm "v")) = some v)
    (hmem : @panMemStoresHOL 64 _ w (flattenHOL v) u.memaddrs
      (fun x => Classical.propDecidable (u.memaddrs x)) u.memory = some mem) :
    PushMid C H T Γ0 s0 p0 PWs e SP CAP STK V { u with memory := mem } := by
  obtain ⟨hsp, hvl, hev, Γ2, e2, ht, he2, hb2, ht2, hsm, hSP', hlt, hno⟩ := hm
  rw [ev_lw' hvl] at hv; cases hv
  obtain ⟨x, y, hx, hy, rfl⟩ := ev_add2_inv hw
  obtain ⟨hx', -⟩ := ev_evL hev hx
  cases hx'
  unfold mul32 at hy
  rw [ev_mul2 (ev_lw' hsp) (ev_cw u 32)] at hy
  cases hy
  have hsm' := hsm
  obtain ⟨⟨a1, a2, a3, o, ho, hob, hot, hosz⟩, -⟩ := hsm'
  have ht' := ht
  obtain ⟨q, hq, -, -, -, hG2, -⟩ := ht'
  obtain ⟨q', hq', hord, hL, -⟩ := hG2
  rw [hq] at hq'; cases hq'
  -- the stored cells lie in the stack object
  have hsp2 : SP.toNat < (fCAP u.memory e2).toNat := by
    unfold fCAP at hlt ⊢; rw [cells_base hb2]; exact hlt
  have hbase : rd u.memory (e.base + BitVec.ofNat 64 8) = o.base := by
    rw [hob]; unfold fSTK; rw [cells_base hb2]; rfl
  rw [hbase] at hmem
  have hmod := stk_store hord hL ho hot hosz hsp2 a3 hV hmem
  have hsmf := fields_of_inSM hE hord hL he2 ht2 hmod
  have hsmf' : ∀ a, SMCell e a → mem a = u.memory a := fun a ha => hsmf a (by
    obtain ⟨k, hk, rfl⟩ := ha; exact ⟨k, hk, (cells_base hb2 k).symm⟩)
  have hrd : ∀ k ∈ smSlots, rd mem (e.cell k) = rd u.memory (e.cell k) := fun k hk => by
    rw [rd, hsmf' _ ⟨k, hk, rfl⟩, ← rd]
  refine ⟨hsp, hvl, hev, Γ2, e2, ?_, he2, hb2, ht2, evSM_congr hsmf hsm, ?_, ?_, ?_⟩
  · refine trk_sm (ks := []) hH hE hK ht hord0 hL0 he2 ht2 rfl rfl rfl
      (hmod.mono fun a h => Or.inr h) (fun k hk => by cases hk) (evSM_congr hsmf hsm)
  · show rd mem (e.cell 2) = SP
    rw [hrd 2 (by decide)]; exact hSP'
  · show SP.toNat < (rd mem (e.cell 29)).toNat
    rw [hrd 29 (by decide)]; exact hlt
  · intro h
    obtain ⟨h1, h2, h3, h4⟩ := hno h
    refine ⟨h1, by rw [← h2]; rfl, ?_, ?_⟩
    · show rd mem (e.cell 29) = CAP
      rw [hrd 29 (by decide)]; exact h3
    · show rd mem (e.cell 1) = STK
      rw [hrd 1 (by decide)]; exact h4

theorem pushTail_run (hH : HooksLawful C H) (hE : EvCfg C T) (hK : EvHook C H T) {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {e : Obj} {SP CAP STK : BitVec 64} {V : ValueHOL 64}
    (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0) (hp0 : ptrsOf s0 = some p0)
    (he0 : EvObj T Γ0 s0 e) (hSP : fSP s0.memory e = SP) (hCAP : fCAP s0.memory e = CAP)
    (hSTK : fSTK s0.memory e = STK)
    (hV : shapeEqHOL (shK 4) (shapeOfHOLExact V) = true) :
    HoareG σ X (PushMid C H T Γ0 s0 p0 (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a)
      e SP CAP STK V) pushTail
      (Fin C H sgPush (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a) Γ0 s0 [V]
        (PushQ T)) := by
  have hPW2 : ProtCell C Γ0 (e.cell 2) ∧ PWev T [1, 2, 29] [V] s0 Γ0 (e.cell 2) :=
    ⟨smCell_prot hE hL0 he0.1 he0.2.1 ⟨2, by decide, rfl⟩, e, he0, 2, by decide, rfl⟩
  have huniq : ∀ e', EvObj T Γ0 s0 e' → e' = e := fun e' h' => evObj_unique hL0 h' he0
  refine hoareG_seq (R := fun r t => r = none ∧ PushMid C H T Γ0 s0 p0
      (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a) e SP CAP STK V t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_false fun u _ ⟨hm, w, hw, hw0⟩ => ?_
      obtain ⟨hsp, -, -, Γ2, e2, ht, he2, hb2, ht2, hsm, hSP', hlt, -⟩ := hm
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw' hsp] at hx; cases hx
      rw [ev_cw] at hy; cases hy
      have := cmp_eq_true hxy
      subst this
      have hc := hsm.1.2.2.1
      unfold fCAP at hc hlt
      rw [cells_base hb2] at hc
      simp at hlt
      omega
    · exact hoareG_skip fun u _ ⟨hm, _⟩ => ⟨rfl, hm⟩
  refine hoareG_pre (P := PushMid C H T Γ0 s0 p0
      (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a) e SP CAP STK V)
      ?_ (fun _ _ h => h.2)
  refine hoareG_seq (R := fun r t => r = none ∧ PushMid C H T Γ0 s0 p0
      (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a) e SP CAP STK V t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoareG_store fun u _ hm w v mem hw hv hmem =>
      ⟨rfl, pushMid_store hH hE hK hord0 hL0 hV hm hw hv hmem⟩
  refine hoareG_pre (P := PushMid C H T Γ0 s0 p0
      (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a) e SP CAP STK V)
      ?_ (fun _ _ h => h.2)
  -- bump `SP`, return
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ Γ2, Trk C H Γ0 s0 p0
      (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a) Γ2 t ∧
      (fSP t.memory e).toNat = SP.toNat + 1 ∧
      (SP.toNat < CAP.toNat → Γ2 = Γ0 ∧ ptrsOf t = ptrsOf s0 ∧ fCAP t.memory e = CAP ∧
        fSTK t.memory e = STK)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_store fun u _ hm w v mem hw hv hmem => ?_
    obtain ⟨hsp, -, hev, Γ2, e2, ht, he2, hb2, ht2, hsm, hSP', hlt, hno⟩ := hm
    rw [ev_evA hev] at hw; cases hw
    rw [ev_add2 (ev_lw' hsp) (ev_cw u 1)] at hv; cases hv
    have hmem' := store_word hmem
    subst hmem'
    have hc2 : e.base + BitVec.ofNat 64 16 = e2.cell 2 := (cells_base hb2 2).symm
    rw [hc2]
    have hcap := hsm.1.2.2.1
    have hlt' : SP.toNat < (fCAP u.memory e2).toNat := by
      unfold fCAP at hlt ⊢; rw [cells_base hb2]; exact hlt
    have hsp1 : (SP + BitVec.ofNat 64 1).toNat = SP.toNat + 1 :=
      toNat_add_small (by simp; omega)
    have hrd : ∀ k ∈ smSlots, k ≠ 2 →
        rd (upd u.memory (e2.cell 2) (SP + BitVec.ofNat 64 1)) (e2.cell k) = rd u.memory (e2.cell k) :=
      fun k hk hk2 => rd_upd_ne (cell_ne e2 (sm_mem hk) (by decide) hk2)
    have hsm' : EvSM T Γ2 (upd u.memory (e2.cell 2) (SP + BitVec.ofNat 64 1)) e2 := by
      obtain ⟨⟨a1, a2, a3, a4⟩, hmm⟩ := hsm
      have e1 := hrd 1 (by decide) (by decide)
      have e3 := hrd 3 (by decide) (by decide)
      have e4 := hrd 4 (by decide) (by decide)
      have e5 := hrd 5 (by decide) (by decide)
      have e29 := hrd 29 (by decide) (by decide)
      unfold EvSM StkOK MemOK fSTK fSP fMEM fLEN fMCAP fCAP at *
      rw [e1, e3, e4, e5, e29, rd_upd_self, hsp1]
      exact ⟨⟨by omega, a2, a3, a4⟩, hmm⟩
    refine ⟨rfl, Γ2, ?_, ?_, ?_⟩
    · refine trk_sm (ks := [2]) hH hE hK ht hord0 hL0 he2 ht2 rfl rfl rfl ?_ ?_ hsm'
      · intro a ha
        exact upd_ne fun h => ha (Or.inl ⟨2, by decide, by decide, h⟩)
      · intro k hk
        simp only [List.mem_singleton] at hk
        subst hk
        rw [cells_base hb2]; exact hPW2
    · show (rd _ (e.cell 2)).toNat = _
      rw [← cells_base hb2, rd_upd_self, hsp1]
    · intro h
      obtain ⟨h1, h2, h3, h4⟩ := hno h
      refine ⟨h1, by rw [← h2]; rfl, ?_, ?_⟩
      · show rd _ (e.cell 29) = CAP
        rw [← cells_base hb2, hrd 29 (by decide) (by decide), cells_base hb2]; exact h3
      · show rd _ (e.cell 1) = STK
        rw [← cells_base hb2, hrd 1 (by decide) (by decide), cells_base hb2]; exact h4
  · refine hoareG_return fun u _ ⟨_, Γ2, ht, hsp1, hno⟩ v _ => ?_
    refine fin_of_trk hH (trk_congr hH ht rfl rfl rfl rfl) hp0 (fun h => by cases h)
      (fun _ _ _ _ => retOK_nil _) fun t' h1 h2 e' he' => ?_
    rw [huniq e' he']
    refine ⟨fun _ => by rw [hSP]; unfold fSP at hsp1 ⊢; rw [h1]; exact hsp1, fun h => ?_⟩
    rw [hSP, hCAP] at h
    obtain ⟨h1', h2', h3', h4'⟩ := hno h
    refine ⟨h1', ?_, ⟨_, rfl⟩, ?_, ?_⟩
    · rw [← h2']; unfold ptrsOf gword; rw [h2]; rfl
    · rw [hCAP, ← h3']; unfold fCAP; rw [h1]; rfl
    · rw [hSTK, ← h4']; unfold fSTK; rw [h1]; rfl

theorem pushMid_locals {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PWs : BitVec 64 → Prop} {e : Obj}
    {SP CAP STK : BitVec 64} {V : ValueHOL 64} (hH : HooksLawful C H) {t t' : State σ}
    (h : PushMid C H T Γ0 s0 p0 PWs e SP CAP STK V t) (hm : t'.memory = t.memory)
    (hg : t'.globals = t.globals) (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be)
    (hsp : t'.locals.lookup (nm "sp") = t.locals.lookup (nm "sp"))
    (hv : t'.locals.lookup (nm "v") = t.locals.lookup (nm "v")) :
    PushMid C H T Γ0 s0 p0 PWs e SP CAP STK V t' := by
  obtain ⟨h1, h2, h3, Γ2, e2, ht, he2, hb2, ht2, hsm, hSP', hlt, hno⟩ := h
  refine ⟨hsp.trans h1, hv.trans h2, by rw [hg]; exact h3, Γ2, e2, trk_congr hH ht hm hg hd hbe,
    he2, hb2, ht2, by rw [hm]; exact hsm, by unfold fSP; rw [hm]; exact hSP', by
      unfold fCAP; rw [hm]; exact hlt, fun hc => ?_⟩
  obtain ⟨a1, a2, a3, a4⟩ := hno hc
  refine ⟨a1, by rw [← a2]; unfold ptrsOf gword; rw [hg], by unfold fCAP; rw [hm]; exact a3,
    by unfold fSTK; rw [hm]; exact a4⟩

/-- The post of the growth branch. -/
def GrowPost (C : Cfg) (H : Hooks σ) (T : STy) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (e : Obj) (SP CAP STK : BitVec 64) (V : ValueHOL 64) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  (r ≠ none → Fin C H sgPush (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a) Γ0 s0 [V]
      (PushQ T) r t) ∧
    (r = none → PushMid C H T Γ0 s0 p0 (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a)
      e SP CAP STK V t)

theorem growPost_res {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e : Obj} {SP CAP STK : BitVec 64}
    {V : ValueHOL 64} (hH : HooksLawful C H) {n : MlS} (hn1 : n ≠ nm "sp") (hn2 : n ≠ nm "v")
    (r : Option (PanSemResultExact 64)) (t : State σ) (o : Option (ValueHOL 64))
    (h : GrowPost C H T Γ0 s0 p0 e SP CAP STK V r t) :
    GrowPost C H T Γ0 s0 p0 e SP CAP STK V r { t with locals := t.locals.resVarEq (n, o) } :=
  ⟨fun hr => fin_locals (h.1 hr) _, fun hr => pushMid_locals hH (h.2 hr) rfl rfl rfl rfl
    (lookup_resVarEq_ne _ _ hn1) (lookup_resVarEq_ne _ _ hn2)⟩

/-- Exceptional results of the growth branch, before any EV write. -/
theorem growPost_exc {Γ0 Γ : Gam} {s0 t : State σ} {p0 : Ptrs} {e : Obj} {SP CAP STK : BitVec 64}
    {V : ValueHOL 64} (hH : HooksLawful C H) (hL0 : Layout C p0 Γ0) (hp0 : ptrsOf s0 = some p0)
    (he0 : EvObj T Γ0 s0 e) (hSP : fSP s0.memory e = SP) (hCAP : fCAP s0.memory e = CAP)
    (hle : CAP.toNat ≤ SP.toNat) {r : PanSemResultExact 64} (hr : ∀ v, r ≠ .returned v)
    (h : Trk C H Γ0 s0 p0 (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a) Γ t) :
    GrowPost C H T Γ0 s0 p0 e SP CAP STK V (some r) t := by
  refine ⟨fun _ => fin_of_trk hH h hp0 (fun h => by cases h) (fun _ _ v hv => absurd hv (hr v))
    fun t' _ _ e' he' => ?_, fun h => by cases h⟩
  rw [evObj_unique hL0 he' he0, hSP, hCAP]
  exact ⟨fun ⟨v, hv⟩ => absurd hv (hr v), fun h => absurd h (by omega)⟩

theorem argCells_memcpy {gr : Bool} {q x y : BitVec 64} {a : BitVec 64}
    (h : ArgCells (sgMemcpy gr).params [.val (.word q), .val (.word x), .val (.word y)] a) :
    Overlap q.toNat (1 * y.toNat + 0) a := by
  obtain ⟨i, w, hw, h⟩ := h
  rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
  · rcases i with _ | _ | _ | i <;> simp [sgMemcpy] at hn
  · rcases i with _ | _ | _ | i <;> simp [sgMemcpy] at hj
    obtain ⟨rfl, rfl, rfl⟩ := hj
    simp [argW, wordOf] at hw hz
    subst hw; subst hz
    exact ho

/-- **The growth branch.** -/
theorem grow_run (hH : HooksLawful C H) (hM : HooksMono C H) (hE : EvCfg C T) (hK : EvHook C H T)
    {gr : Bool} (hSA : AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hCP : Summ σ X C H (nm "memcpy") (sgMemcpy gr)) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {e : Obj} {SP CAP STK : BitVec 64} {V : ValueHOL 64} (hs0 : InCtx s0 X) (hG0 : G C H Γ0 s0)
    (hp0 : ptrsOf s0 = some p0) (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0)
    (he0 : EvObj T Γ0 s0 e) (hsm0 : EvSM T Γ0 s0.memory e) (hSP : fSP s0.memory e = SP)
    (hCAP : fCAP s0.memory e = CAP) (hSTK : fSTK s0.memory e = STK) :
    HoareG σ X (fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.be = s0.be ∧
        t.locals.lookup (nm "sp") = some (.val (.word SP)) ∧
        t.locals.lookup (nm "cap") = some (.val (.word CAP)) ∧
        t.locals.lookup (nm "v") = some V ∧ CAP.toNat ≤ SP.toNat) growBody
      (GrowPost C H T Γ0 s0 p0 e SP CAP STK V) := by
  have hA := hE.allocG
  set PWs := fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a with hPWs
  have hT0 : ∀ t : State σ, InCtx t X → t.memory = s0.memory → t.globals = s0.globals →
      t.be = s0.be → Trk C H Γ0 s0 p0 PWs Γ0 t :=
    fun t ht hm hg hb => trk_congr hH (trk_refl hG0 hp0) hm hg (ht.2.1.trans hs0.2.1.symm) hb
  have hev0 := he0.2.2
  obtain ⟨⟨a1, a2, a3, ⟨os, hos, hosb, host, hossz⟩⟩, hmem0⟩ := hsm0
  rw [hSP, hCAP] at a1; rw [hCAP] at a2 a3
  -- `cap >= 1024`: overflow
  refine hoareG_seq (R := fun r t => (r ≠ none → GrowPost C H T Γ0 s0 p0 e SP CAP STK V r t) ∧
      (r = none → t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.be = s0.be ∧
        t.locals.lookup (nm "sp") = some (.val (.word SP)) ∧
        t.locals.lookup (nm "cap") = some (.val (.word CAP)) ∧
        t.locals.lookup (nm "v") = some V ∧ CAP.toNat ≤ SP.toNat ∧ CAP.toNat < 1024))
    ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_raise fun u hu ⟨⟨hm, hg, hb, _, _, _, hle⟩, _⟩ v _ =>
        ⟨fun _ => growPost_exc (r := .exception (nm "EvmErr") v) hH hL0 hp0 he0 hSP hCAP hle
          (fun _ h => by cases h) (hT0 (emptyLocalsHOLFinite u) (InCtx.of_eq hu rfl rfl rfl) hm hg hb),
          fun h => (by cases h)⟩
    · refine hoareG_skip fun u _ ⟨⟨hm, hg, hb, hsp, hcap, hv, hle⟩, hc⟩ => ⟨fun h => absurd rfl h,
        fun _ => ⟨hm, hg, hb, hsp, hcap, hv, hle, ?_⟩⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw' hcap] at hx; cases hx
      rw [ev_cw] at hy; cases hy
      have := cmp_notLower_false hxy
      simpa using this
  refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.be = s0.be ∧
      t.locals.lookup (nm "sp") = some (.val (.word SP)) ∧
      t.locals.lookup (nm "cap") = some (.val (.word CAP)) ∧
      t.locals.lookup (nm "v") = some V ∧ CAP.toNat ≤ SP.toNat ∧ CAP.toNat < 1024) ?_
    (fun _ _ h => h.2 rfl)
  -- `var ncap = cap * 2; if ncap > 1024 { ncap = 1024 }`
  refine hoareG_decN (growPost_res hH (by decide) (by decide)) fun u _ ⟨hm, hg, hb, hsp, hcap,
    hv, hle, hlt⟩ w hw _ => ?_
  rw [ev_mul2 (ev_lw' hcap) (ev_cw u 2)] at hw
  cases hw
  have hc2 : (CAP * BitVec.ofNat 64 2).toNat = 2 * CAP.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat]; omega
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ NC : BitVec 64,
      t.locals.lookup (nm "ncap") = some (.val (.word NC)) ∧ CAP.toNat < NC.toNat ∧
      NC.toNat ≤ 1024 ∧ t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.be = s0.be ∧
      t.locals.lookup (nm "sp") = some (.val (.word SP)) ∧ t.locals.lookup (nm "v") = some V)
    ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_assign fun u' _ ⟨hu', _⟩ v hv _ => ?_
      subst hu'
      rw [ev_cw] at hv; cases hv
      refine ⟨rfl, BitVec.ofNat 64 1024, lk_set_self _ _ _, by simp; omega, by simp, hm, hg, hb, ?_, ?_⟩
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hsp
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hv
    · refine hoareG_skip fun u' _ ⟨hu', hc⟩ => ?_
      subst hu'
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_cw] at hx; cases hx
      rw [ev_lv_set] at hy; cases hy
      have := cmp_lower_false hxy
      rw [hc2] at this
      simp at this
      refine ⟨rfl, _, lk_set_self _ _ _, by rw [hc2]; omega, by rw [hc2]; omega, hm, hg, hb, ?_, ?_⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hsp
      · rw [lk_set_ne _ _ (by decide)]; exact hv
  refine hoareG_pre (P := fun t => ∃ NC : BitVec 64,
      t.locals.lookup (nm "ncap") = some (.val (.word NC)) ∧ CAP.toNat < NC.toNat ∧
      NC.toNat ≤ 1024 ∧ t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.be = s0.be ∧
      t.locals.lookup (nm "sp") = some (.val (.word SP)) ∧ t.locals.lookup (nm "v") = some V) ?_
    (fun _ _ h => h.2)
  -- `var ns = scratch_alloc(ncap * 32)`
  refine hoareG_decCallN (growPost_res hH (by decide) (by decide)) (hSA.and (funSpec_be' _)) ?_ ?_
  rotate_left
  · -- the allocator trapped
    intro u hu ⟨NC, hnc, hlt1, hle1, hm, hg, hb, hsp, hv⟩ vs hvs callee r st ⟨hR, hbe⟩ hst habn
    unfold mul32 at hvs
    rw [evs_cons (ev_mul2 (ev_lw' hnc) (ev_cw u 32)) evs_nil] at hvs
    cases hvs
    have hpu : ptrsOf (callEntryStateHOLFinite u callee) = some p0 := by
      rw [← hp0]; exact ptrsOf_congr hg
    have hgood : Good (some r) := by
      rcases habn with ⟨_, _, rfl⟩ | ⟨_, rfl⟩ <;> simp
    obtain ⟨hmst, hgst, p1, hp1, hord1, hmo1, -⟩ := hR hgood _ _ rfl hpu hord0
    have ht := trk_alloc hH hA (hT0 u hu hm hg hb) rfl rfl hpu hmst hgst hp1 hord1 hmo1
      (hst.2.1.trans hu.2.1.symm) hbe
    refine growPost_exc hH hL0 hp0 he0 hSP hCAP hle ?_ (trk_congr hH ht rfl rfl rfl rfl)
    rintro v rfl
    rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
  intro u hu ⟨NC, hnc, hlt1, hle1, hm, hg, hb, hsp, hv⟩ vs hvs callee w st ⟨hR, hbe⟩ hst _
  unfold mul32 at hvs
  rw [evs_cons (ev_mul2 (ev_lw' hnc) (ev_cw u 32)) evs_nil] at hvs
  cases hvs
  have hpu : ptrsOf (callEntryStateHOLFinite u callee) = some p0 := by
    rw [← hp0]; exact ptrsOf_congr hg
  obtain ⟨hmst, hgst, p1, hp1, hord1, hmo1, hq⟩ := hR (by simp) _ _ rfl hpu hord0
  obtain ⟨q, rfl, hq8, hlive, hna⟩ := hq _ rfl
  have hn : (NC * BitVec.ofNat 64 32).toNat = 32 * NC.toNat := toNat_mul32 hle1
  have hT1 := trk_alloc_obj (ty := T.stk) hH hM hA (hT0 u hu hm hg hb) rfl rfl hpu hmst hgst hp1
    hord1 hmo1 (hst.2.1.trans hu.2.1.symm) hbe hq8 (by rw [hn]; omega) (by rw [hn]; omega)
    (by rw [hn]; have := hE.stk_min; omega) hE.stk_region hlive hna hE.stk_scalar hE.stk_tag
    (hK.stk_wf)
  set ostk : Obj := ⟨q, T.stk, (NC * BitVec.ofNat 64 32).toNat⟩ with hostk
  set Γ1 := Γ0 ++ [ostk] with hΓ1
  have hgev : st.globals.lookup gEv = some (.val (.word e.base)) := by
    rw [hgst gEv (by decide)]; exact hg ▸ hev0
  -- the state after the allocation
  refine hoareG_pre (P := fun u5 => u5.locals.lookup (nm "ns") = some (.val (.word q)) ∧
      u5.locals.lookup (nm "ncap") = some (.val (.word NC)) ∧
      u5.locals.lookup (nm "sp") = some (.val (.word SP)) ∧ u5.locals.lookup (nm "v") = some V ∧
      u5.memory = s0.memory ∧ u5.globals.lookup gEv = some (.val (.word e.base)) ∧
      Trk C H Γ0 s0 p0 PWs Γ1 u5) ?_ (fun u5 _ h => by
        subst h
        refine ⟨lk_set_self _ _ _, ?_, ?_, ?_, hmst.trans hm, hgev, trk_congr hH hT1 rfl rfl rfl rfl⟩
        · rw [lk_set_ne _ _ (by decide)]; exact hnc
        · rw [lk_set_ne _ _ (by decide)]; exact hsp
        · rw [lk_set_ne _ _ (by decide)]; exact hv)
  have hobj1 : ostk ∈ Γ1 := List.mem_append_right _ (List.mem_singleton_self _)
  have he1 : e ∈ Γ1 := List.mem_append_left _ he0.1
  have hNC : SP.toNat < NC.toNat := by omega
  -- `memcpy(ns, stack, sp * 32)`
  refine hoareG_seq (R := fun r t => (r ≠ none → GrowPost C H T Γ0 s0 p0 e SP CAP STK V r t) ∧
      (r = none → t.locals.lookup (nm "ns") = some (.val (.word q)) ∧
        t.locals.lookup (nm "ncap") = some (.val (.word NC)) ∧
        t.locals.lookup (nm "sp") = some (.val (.word SP)) ∧ t.locals.lookup (nm "v") = some V ∧
        t.globals.lookup gEv = some (.val (.word e.base)) ∧
        ∃ Γ2 e2 o2, Trk C H Γ0 s0 p0 PWs Γ2 t ∧ e2 ∈ Γ2 ∧ e2.base = e.base ∧ e2.ty = T.ev ∧
          o2 ∈ Γ2 ∧ o2.base = q ∧ o2.ty = T.stk ∧ 32 * NC.toNat ≤ o2.size ∧
          ∀ k ∈ smSlots, rd t.memory (e.cell k) = rd s0.memory (e.cell k)))
    ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · -- the call, from the state after the allocation
    have key : ∀ u5 : State σ, InCtx u5 X → u5.locals.lookup (nm "ns") = some (.val (.word q)) →
        u5.locals.lookup (nm "sp") = some (.val (.word SP)) →
        u5.globals.lookup gEv = some (.val (.word e.base)) → Trk C H Γ0 s0 p0 PWs Γ1 u5 →
        ∀ vs, evs u5 [lv (nm "ns"), evL 8, mul32 (lv (nm "sp"))] = some vs →
        ∀ callee' r (st2 : State σ), Good (some r) →
          (∀ Γ, G C H Γ (callEntryStateHOLFinite u5 callee') →
            (∃ p, ptrsOf (callEntryStateHOLFinite u5 callee') = some p ∧
              ArgsOK C Γ p (sgMemcpy gr).params vs) → True →
            ∃ Γ' p p', SumCore C H (sgMemcpy gr) (fun a => ProtCell C Γ a ∧ False) Γ
              (callEntryStateHOLFinite u5 callee') vs r st2 Γ' p p' ∧ True) →
          st2.memaddrs = u5.memaddrs → st2.be = u5.be →
          st2.globals.lookup gEv = some (.val (.word e.base)) ∧
          ∃ Γ2 e2 o2, Trk C H Γ0 s0 p0 PWs Γ2 st2 ∧ e2 ∈ Γ2 ∧ e2.base = e.base ∧ e2.ty = T.ev ∧
            o2 ∈ Γ2 ∧ o2.base = q ∧ o2.ty = T.stk ∧ 32 * NC.toNat ≤ o2.size ∧
            ∀ k ∈ smSlots, rd st2.memory (e.cell k) = rd u5.memory (e.cell k) := by
      intro u5 hu5 hns hsp5 hev5 hT5 vs hvs callee' r st2 hgood hR2 hd2 hbe2
      obtain ⟨a0, vs1, rfl, ha0, hvs1⟩ := evs_cons_inv hvs
      obtain ⟨a1', vs2, rfl, ha1, hvs2⟩ := evs_cons_inv hvs1
      obtain ⟨a2', vs3, rfl, ha2, hvs3⟩ := evs_cons_inv hvs2
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs3
      subst hvs3
      rw [ev_lw' hns] at ha0; cases ha0
      obtain ⟨rfl, -⟩ := ev_evL hev5 ha1
      unfold mul32 at ha2
      rw [ev_mul2 (ev_lw' hsp5) (ev_cw u5 32)] at ha2; cases ha2
      have hG5 := trk_G hT5
      have hG5' : G C H Γ1 (callEntryStateHOLFinite u5 callee') :=
        G_congr (s := u5) hH rfl rfl rfl rfl hG5
      obtain ⟨q5, hq5, hord5, hL5, -⟩ := hG5
      have hq5' : ptrsOf (callEntryStateHOLFinite u5 callee') = some q5 := by
        rw [← hq5]; exact ptrsOf_congr rfl
      have hsz : 1 * (SP * BitVec.ofNat 64 32).toNat + 0 ≤ ostk.size := by
        rw [toNat_mul32 (by omega)]; show _ ≤ (NC * BitVec.ofNat 64 32).toNat; rw [hn]; omega
      have hsc : ∀ a, Overlap q.toNat (1 * (SP * BitVec.ofNat 64 32).toNat + 0) a →
          SCell C Γ1 a :=
        fun a ha => overlap_scell hord5 hL5 hobj1 hE.stk_scalar (le_refl _)
          (by show q.toNat + _ ≤ q.toNat + ostk.size; omega) ha
      have hargs : ArgsOK C Γ1 q5 (sgMemcpy gr).params
          [.val (.word q), .val (.word (rd u5.memory (e.base + BitVec.ofNat 64 8))),
            .val (.word (SP * BitVec.ofNat 64 32))] := by
        refine ⟨rfl, fun i pt v hpt hv => ?_⟩
        rcases i with _ | _ | _ | i <;> simp [sgMemcpy] at hpt hv <;> subst hpt <;> subst hv
        · exact ⟨q, SP * BitVec.ofNat 64 32, rfl, rfl, fun a ha => Or.inl (hsc a ha)⟩
        · trivial
        · trivial
      obtain ⟨Γ2, pp, pp', hcore, -⟩ := hR2 Γ1 hG5' ⟨q5, hq5', hargs⟩ trivial
      have hpp : pp = q5 := by
        have := hcore.1; rw [hq5'] at this; exact (Option.some.inj this).symm
      subst hpp
      have hArg : ∀ a, ArgCells (sgMemcpy gr).params [.val (.word q),
          .val (.word (rd u5.memory (e.base + BitVec.ofNat 64 8))),
          .val (.word (SP * BitVec.ofNat 64 32))] a → WCell C Γ1 a :=
        fun a ha => sCell_wCell (hsc a (argCells_memcpy ha))
      have hT2 := trk_call hT5 hord0 hL0 rfl rfl hcore (fun g _ => by simp [sgMemcpy])
        (fun a ha => Or.inl (hArg a ha)) (fun _ _ h => h.elim) hd2 hbe2
      have hx2 := hcore.2.2.2.1
      obtain ⟨e2, he2, hb2, ht2, -⟩ := hx2 e he1
      obtain ⟨o2, ho2, hob2, hot2, hos2⟩ := hx2 ostk hobj1
      refine ⟨?_, Γ2, e2, o2, hT2, he2, hb2, ht2.trans he0.2.1, ho2, hob2, hot2,
        by rw [← hn]; exact hos2, fun k hk => ?_⟩
      · rw [hcore.2.2.2.2.2.2.2.1 gEv hE.ev_pg (by simp [sgMemcpy])]; exact hev5
      · have hpc : ProtCell C Γ1 (e.cell k) := smCell_prot hE hL5 he1 he0.2.1 ⟨k, hk, rfl⟩
        rw [rd, sumCore_prot hG5' hcore (fun a ha => Or.inl (hArg a ha)) hpc id, ← rd]
        rfl
    refine hoareG_callD (FunSpec.and (R := fun vs s r t => Good (some r) → ∀ Γ, G C H Γ s →
        (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p (sgMemcpy gr).params vs) → True →
        ∃ Γ' p p', SumCore C H (sgMemcpy gr) (fun a => ProtCell C Γ a ∧ False) Γ s vs r t Γ' p p' ∧
          True) hCP (funSpec_be' _)) ?_ ?_
    · intro u5 hu5 ⟨hns, hnc5, hsp5, hv5, hm5, hev5, hT5⟩ vs hvs callee' w' st2 ⟨hR2, hbe2⟩ hst2
      obtain ⟨hev2, Γ2, e2, o2, hT2, he2, hb2, ht2, ho2, hob2, hot2, hos2, hsmk⟩ :=
        key u5 hu5 hns hsp5 hev5 hT5 vs hvs callee' (.returned w') st2 (by simp) (hR2 (by simp))
          (hst2.2.1.trans hu5.2.1.symm) hbe2
      refine ⟨fun h => absurd rfl h, fun _ => ⟨hns, hnc5, hsp5, hv5, hev2, Γ2, e2, o2,
        trk_congr hH hT2 rfl rfl rfl rfl, he2, hb2, ht2, ho2, hob2, hot2, hos2, fun k hk => ?_⟩⟩
      show rd st2.memory (e.cell k) = _
      rw [hsmk k hk, hm5]
    · intro u5 hu5 ⟨hns, hnc5, hsp5, hv5, hm5, hev5, hT5⟩ vs hvs callee' r st2 ⟨hR2, hbe2⟩ hst2 habn
      have hgood : Good (some r) := by
        rcases habn with ⟨_, _, rfl⟩ | ⟨_, rfl⟩ <;> simp
      obtain ⟨-, Γ2, -, -, hT2, -⟩ := key u5 hu5 hns hsp5 hev5 hT5 vs hvs callee' r st2 hgood
        (hR2 hgood) (hst2.2.1.trans hu5.2.1.symm) hbe2
      refine ⟨fun _ => growPost_exc hH hL0 hp0 he0 hSP hCAP hle ?_
        (trk_congr hH hT2 rfl rfl rfl rfl), fun h => by cases h⟩
      rintro v rfl
      rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
  -- `st ev + 8, ns; st ev + 232, ncap`
  refine hoareG_pre (P := fun t => t.locals.lookup (nm "ns") = some (.val (.word q)) ∧
      t.locals.lookup (nm "ncap") = some (.val (.word NC)) ∧
      t.locals.lookup (nm "sp") = some (.val (.word SP)) ∧ t.locals.lookup (nm "v") = some V ∧
      t.globals.lookup gEv = some (.val (.word e.base)) ∧
      ∃ Γ2 e2 o2, Trk C H Γ0 s0 p0 PWs Γ2 t ∧ e2 ∈ Γ2 ∧ e2.base = e.base ∧ e2.ty = T.ev ∧
        o2 ∈ Γ2 ∧ o2.base = q ∧ o2.ty = T.stk ∧ 32 * NC.toNat ≤ o2.size ∧
        ∀ k ∈ smSlots, rd t.memory (e.cell k) = rd s0.memory (e.cell k)) ?_
    (fun _ _ h => h.2 rfl)
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ t6 : State σ,
      (t6.locals.lookup (nm "ns") = some (.val (.word q)) ∧
      t6.locals.lookup (nm "ncap") = some (.val (.word NC)) ∧
      t6.locals.lookup (nm "sp") = some (.val (.word SP)) ∧ t6.locals.lookup (nm "v") = some V ∧
      t6.globals.lookup gEv = some (.val (.word e.base)) ∧
      ∃ Γ2 e2 o2, Trk C H Γ0 s0 p0 PWs Γ2 t6 ∧ e2 ∈ Γ2 ∧ e2.base = e.base ∧ e2.ty = T.ev ∧
        o2 ∈ Γ2 ∧ o2.base = q ∧ o2.ty = T.stk ∧ 32 * NC.toNat ≤ o2.size ∧
        ∀ k ∈ smSlots, rd t6.memory (e.cell k) = rd s0.memory (e.cell k)) ∧
      t.memory = upd t6.memory (e.cell 1) q ∧ t.globals = t6.globals ∧ t.locals = t6.locals ∧
      t.memaddrs = t6.memaddrs ∧ t.be = t6.be) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_store fun u6 _ hP6 w v mem hw hv hmem => ?_
    rw [ev_evA hP6.2.2.2.2.1] at hw; cases hw
    rw [ev_lw' hP6.1] at hv; cases hv
    exact ⟨rfl, u6, hP6, store_word hmem, rfl, rfl, rfl, rfl⟩
  refine hoareG_store fun u7 _ ⟨_, u6, hP6, hm7, hg7, hl7, hd7, hb7⟩ w v mem hw hv hmem =>
    ⟨fun h => absurd rfl h, fun _ => ?_⟩
  obtain ⟨hns, hnc6, hsp6, hv6, hev6, Γ2, e2, o2, hT6, he2, hb2, ht2, ho2, hob2, hot2, hos2,
    hsmk⟩ := hP6
  have hev7 : u7.globals.lookup gEv = some (.val (.word e.base)) := by rw [hg7]; exact hev6
  rw [ev_evA hev7] at hw; cases hw
  rw [ev_lw' (show u7.locals.lookup (nm "ncap") = some (.val (.word NC)) by rw [hl7]; exact hnc6)]
    at hv
  cases hv
  have hmem' := store_word hmem
  subst hmem'
  rw [hm7]
  -- the new stack/memory fields
  have c1 : e.base + BitVec.ofNat 64 8 = e.cell 1 := rfl
  have c29 : e.base + BitVec.ofNat 64 232 = e.cell 29 := rfl
  rw [c29]
  set mf := upd (upd u6.memory (e.cell 1) q) (e.cell 29) NC with hmf
  have hr1 : rd mf (e.cell 1) = q := by
    rw [hmf, rd_upd_ne (cell_ne e (by decide) (by decide) (by decide)), rd_upd_self]
  have hr29 : rd mf (e.cell 29) = NC := by rw [hmf, rd_upd_self]
  have hro : ∀ k ∈ smSlots, k ≠ 1 → k ≠ 29 → rd mf (e.cell k) = rd s0.memory (e.cell k) := by
    intro k hk h1 h29
    rw [hmf, rd_upd_ne (cell_ne e (sm_mem hk) (by decide) h29),
      rd_upd_ne (cell_ne e (sm_mem hk) (by decide) h1), hsmk k hk]
  have hsm : EvSM T Γ2 mf e2 := by
    refine ⟨⟨?_, ?_, ?_, o2, ho2, ?_, hot2, ?_⟩, ?_⟩
    · unfold fSP fCAP; rw [cells_base hb2, cells_base hb2, hro 2 (by decide) (by decide) (by decide), hr29]
      show (fSP s0.memory e).toNat ≤ _; rw [hSP]; omega
    · unfold fCAP; rw [cells_base hb2, hr29]; omega
    · unfold fCAP; rw [cells_base hb2, hr29]; exact hle1
    · unfold fSTK; rw [cells_base hb2, hr1, hob2]
    · unfold fCAP; rw [cells_base hb2, hr29]; exact hos2
    · refine memOK_transfer (trk_ext hT6) ?_ ?_ ?_ hmem0 <;> rw [cells_base hb2]
      · exact hro 3 (by decide) (by decide) (by decide)
      · exact hro 4 (by decide) (by decide) (by decide)
      · exact hro 5 (by decide) (by decide) (by decide)
  refine ⟨?_, ?_, ?_, Γ2, e2, ?_, he2, hb2, ht2, hsm, ?_, ?_, fun h => absurd h (by omega)⟩
  · show u7.locals.lookup _ = _; rw [hl7]; exact hsp6
  · show u7.locals.lookup _ = _; rw [hl7]; exact hv6
  · exact hev7
  · refine trk_sm (ks := [1, 29]) hH hE hK (trk_congr hH hT6 (t' := { u7 with memory := u6.memory })
      rfl hg7 hd7 hb7) hord0 hL0 he2 ht2 rfl rfl rfl ?_ ?_ hsm
    · intro a ha
      show mf a = u6.memory a
      rw [hmf, upd_ne, upd_ne]
      · exact fun h => ha (Or.inl ⟨1, by decide, by decide, by rw [cells_base hb2]; exact h⟩)
      · exact fun h => ha (Or.inl ⟨29, by decide, by decide, by rw [cells_base hb2]; exact h⟩)
    · intro k hk
      rw [cells_base hb2]
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
      exact ⟨smCell_prot hE hL0 he0.1 he0.2.1 ⟨k, by rcases hk with rfl | rfl <;> decide, rfl⟩,
        e, he0, k, by rcases hk with rfl | rfl <;> decide, rfl⟩
  · show rd mf (e.cell 2) = SP
    rw [hro 2 (by decide) (by decide) (by decide)]; exact hSP
  · show SP.toNat < (rd mf (e.cell 29)).toNat
    rw [hr29]; exact hNC

/-- **`stack_push`**: writes `EV_STACK`, `EV_SP`, `EV_STACK_CAP` of the running frame, the stack
array, and on growth a fresh scratch array (a new `Γ` object). -/
theorem sum_stack_push (hC : X.code.lookup = guestCode) (hH : HooksLawful C H)
    (hM : HooksMono C H) (hE : EvCfg C T) (hK : EvHook C H T) {gr : Bool}
    (hSA : AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hCP : Summ σ X C H (nm "memcpy") (sgMemcpy gr)) :
    SumSpec σ X C H (nm "stack_push") sgPush (fun _ _ _ => True) (PWev T [1, 2, 29])
      (PushQ T) := by
  refine sumSpec_of_hoare fun vs body callee rs hl s0 hs0 hloc Γ0 hG0 _ _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, V, rfl, hVsh, hVl⟩ := lookupCode_one code_stack_push hl
  obtain ⟨e, he⟩ := evObj_of_G hE hG0
  have hG0' := hG0
  obtain ⟨p0, hp0, hord0, hL0, -, -, -, hW0⟩ := hG0'
  have hsm0 := hK.get Γ0 s0 e he.1 he.2.1 (hW0 e he.1)
  have hv0 : s0.locals.lookup (nm "v") = some V := by rw [hloc]; exact hVl
  refine hoareG_dec' (F := Fin C H sgPush (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a)
    Γ0 s0 [V] (PushQ T)) (fun r t l h => fin_locals h l) fun u _ hu0 v hv _ => ?_
  subst u
  obtain ⟨rfl, -⟩ := ev_evL he.2.2 hv
  refine hoareG_dec' (F := Fin C H sgPush (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [V] s0 Γ0 a)
    Γ0 s0 [V] (PushQ T)) (fun r t l h => fin_locals h l) fun u' _ hu1 v' hv' _ => ?_
  subst u'
  obtain ⟨hv'e, -⟩ := ev_evL (s := setVarHOLFinite _ _ s0) he.2.2 hv'
  have hv'e' : v' = .val (.word (rd s0.memory (e.base + BitVec.ofNat 64 232))) := hv'e
  subst hv'e'
  generalize hSP : rd s0.memory (e.base + BitVec.ofNat 64 16) = SP
  generalize hCAP : rd s0.memory (e.base + BitVec.ofNat 64 232) = CAP
  generalize hSTK : fSTK s0.memory e = STK
  have hSP' : fSP s0.memory e = SP := hSP
  have hCAP' : fCAP s0.memory e = CAP := hCAP
  refine hoareG_seq (R := GrowPost C H T Γ0 s0 p0 e SP CAP STK V) ?_ (fun r t _ hr _ h => h.1 hr)
    (hoareG_pre (pushTail_run hH hE hK hord0 hL0 hp0 he hSP' hCAP' hSTK hVsh)
      (fun t _ h => h.2 rfl))
  have hspl : (setVarHOLFinite (nm "cap") (.val (.word CAP))
      (setVarHOLFinite (nm "sp") (.val (.word SP)) s0)).locals.lookup (nm "sp") =
        some (.val (.word SP)) := by
    rw [lk_set_ne _ _ (by decide), lk_set_self]
  have hvl : (setVarHOLFinite (nm "cap") (.val (.word CAP))
      (setVarHOLFinite (nm "sp") (.val (.word SP)) s0)).locals.lookup (nm "v") = some V := by
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hv0
  refine hoareG_ite ?_ ?_
  · refine hoareG_pre (grow_run hH hM hE hK hSA hCP hs0 hG0 hp0 hord0 hL0 he hsm0 hSP' hCAP' hSTK)
      fun t _ ⟨ht, w, hw, hw0⟩ => ?_
    subst ht
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw' hspl] at hx; cases hx
    rw [ev_lv_set] at hy; cases hy
    exact ⟨rfl, rfl, rfl, hspl, lk_set_self _ _ _, hvl, cmp_notLower_true hxy⟩
  · refine hoareG_skip fun t _ ⟨ht, hc⟩ => ⟨fun h => absurd rfl h, fun _ => ?_⟩
    subst ht
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lw' hspl] at hx; cases hx
    rw [ev_lv_set] at hy; cases hy
    have hlt := cmp_notLower_false hxy
    refine ⟨hspl, hvl, he.2.2, Γ0, e, trk_congr hH (trk_refl hG0 hp0) rfl rfl rfl rfl, he.1, rfl,
      he.2.1, hsm0, hSP', by show SP.toNat < (fCAP s0.memory e).toNat; rw [hCAP']; exact hlt,
      fun _ => ⟨rfl, rfl, hCAP', hSTK⟩⟩

end push

end InitECandidate.Solver.MemSafe.Struct
