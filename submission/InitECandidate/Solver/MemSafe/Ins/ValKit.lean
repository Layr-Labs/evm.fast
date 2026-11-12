import InitECandidate.Solver.MemSafe.Ins.Defs

set_option autoImplicit false

/-!
# Stage 2b: the value pair stores of the trie summaries

The leaf / branch value slots (`6, 7` / `20, 21`) are `prot` and hooked (`valD`): a store into them keeps
`G` only if the new slice is `VInR tVAL` (`Hooks.G_write_val`).

* `leafCaps`, `brCaps`: the type capabilities that license the writes into **existing** nodes
  (`_insert_into_leaf`, `_mpt_insert_node`, `_mpt_delete_node_body`);
* `foot_of_cap`: a capability-licensed cell of a node of `Γ` is in the activation's footprint;
* `foot_of_fresh`: a cell of a node allocated by this activation is in the footprint;
* `gp_stPair`: `st B + 8 k, e1; st B + 8 (k + 1), e2; K`, one step: the final pair must satisfy the hook.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

def leafCaps : List Cap := [⟨anyG, Types.tNLEAF, [6, 7], false⟩]
def brCaps : List Cap := [⟨anyG, Types.tNBRANCH, [20, 21], false⟩]
def insCaps : List Cap := leafCaps ++ brCaps

theorem capsOK_leaf (sg : Sig) : capsOK Types.guestC sg leafCaps = true := by
  simp only [capsOK, leafCaps, leafCaps, brCaps, anyG, List.all_cons, List.all_nil, List.cons_append, List.nil_append, Bool.and_true, beq_self_eq_true, Bool.true_or]
  decide
theorem capsOK_br (sg : Sig) : capsOK Types.guestC sg brCaps = true := by
  simp only [capsOK, brCaps, leafCaps, brCaps, anyG, List.all_cons, List.all_nil, List.cons_append, List.nil_append, Bool.and_true, beq_self_eq_true, Bool.true_or]
  decide
theorem capsOK_ins (sg : Sig) : capsOK Types.guestC sg insCaps = true := by
  simp only [capsOK, insCaps, leafCaps, brCaps, anyG, List.all_cons, List.all_nil, List.cons_append, List.nil_append, Bool.and_true, beq_self_eq_true, Bool.true_or]
  decide

theorem capSub_leaf_ins : capSub leafCaps insCaps = true := by decide
theorem capSub_br_ins : capSub brCaps insCaps = true := by decide

theorem reqOK_anyG {cs : List Cap} (h : ∀ c ∈ cs, c.g = anyG) {s : State σ} {Γ : Gam} :
    ReqOK cs s Γ := fun c hc hne => absurd (h c hc) hne

/-- A cell of a node of `Γ` licensed by a type capability of the activation is in its footprint. -/
theorem foot_of_cap {a : Act σ} {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s)
    (hord0 : a.p0.Ordered) (hsz0 : ∀ o ∈ a.Γ0, o.size % 8 = 0) {o : Obj} (ho : o ∈ Γ) {k : Nat}
    (hk : o.HasSlot k) (hprot : (a.C.ty o.ty).slot k = .prot)
    (hc : ∃ c ∈ a.caps, c.g = anyG ∧ c.t = o.ty ∧ k ∈ c.ks) : a.Foot (o.cell k) := by
  obtain ⟨hG, hps, hmono, -, hnf, -, -⟩ := hh
  obtain ⟨p1, hp1, hord, hL, -⟩ := hG
  rw [hps] at hp1
  cases hp1
  have hcc := cell_toNat hord hL ho hk
  rcases hnf o ho (o.cell k) (by rw [hcc.1]; unfold Obj.lo; omega)
      (by rw [hcc.1]; unfold Obj.lo Obj.hi; unfold Obj.HasSlot at hk; omega) with
    ⟨o0, ho0, hb, ht, hlo, hhi⟩ | hfr
  · right; right; right
    have h8 := hsz0 o0 ho0
    obtain ⟨c, hcm, hg, hct, hkc⟩ := hc
    have hk0 : o0.HasSlot k := by
      unfold Obj.HasSlot
      rw [hcc.1] at hlo hhi
      simp only [Obj.lo, Obj.hi] at hlo hhi
      rw [hb] at hlo hhi
      omega
    have e : o.cell k = o0.cell k := by unfold Obj.cell; rw [hb]
    refine ⟨⟨o0, ho0, k, hk0, by rw [ht]; exact hprot, e⟩, c, hcm, Or.inl ⟨o0, ⟨ho0, ?_, Or.inl hg⟩, k, hkc, e⟩⟩
    rw [ht]; exact hct.symm
  · exact Or.inr (Or.inr (Or.inl (fresh_not_alloc hord0 hord hmono hfr)))

/-- A function summary from a `GP`-style body proof, for a function with type capabilities `cs`
(`anyG` capabilities need no capability object): the protected writes are `CapPW cs`. -/
theorem sumSpecA_of_gpC {X : Ctx 64} {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {cs : List Cap} (hcs : capsOK C sg cs = true) (hcs0 : ∀ c ∈ cs, c.g = anyG)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Rx : List (ValueHOL 64) → Ptrs → Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Pre vs s0 Γ0 →
        ActOK (actOf C H sg cs vs s0 Γ0 p0) X → Heap (actOf C H sg cs vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg cs vs s0 Γ0 p0) Γ' p' t ∧ ScrOld Γ0 Γ' ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v ∧ Rx vs p0 Γ' p' t.memory v)) :
    SumSpecA σ X C H f sg Pre (fun _ s Γ a => CapPW cs s Γ a)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → Rx vs p0 Γ' p' t.memory v) := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS hcs hG hps hargs
    (fun c hc hne => absurd (hcs0 c hc) hne)
  have HH := h vs body callee rs hl s hs hloc Γ p1 hpre ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hsc, hret⟩ := HH r rfl hna
  refine ⟨Γ', p1, p', act_exit hcs hps hext hh' (fun v hv => (hret v hv).1), hsc,
    fun v hv q0 q' hq0 hq' => ?_⟩
  rw [hps] at hq0; cases hq0
  rw [hh'.2.1] at hq'; cases hq'
  exact (hret v hv).2

/-- The `n` bytes at `B` were unallocated at the entry allocator `p0`. -/
def FrB (p0 : Ptrs) (B : BitVec 64) (n : Nat) : Prop :=
  ∀ x : BitVec 64, Overlap B.toNat n x → ¬ p0.Allocated x.toNat

/-- A cell of a node object allocated by this activation (the first `n` bytes unallocated at the
entry allocator) is in the footprint. -/
theorem foot_of_fresh {a : Act σ} {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s)
    {o : Obj} (ho : o ∈ Γ) {k n : Nat} (hk : o.HasSlot k) (hkn : 8 * k + 8 ≤ n)
    (hfr : FrB a.p0 o.base n) : a.Foot (o.cell k) := by
  right; right; left
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  have hcc := cell_toNat hord hL ho hk
  obtain ⟨h8, -, -, -, -⟩ := hL.1 o ho
  apply hfr
  refine ⟨?_, ?_, ?_⟩
  · rw [hcc.1]; unfold Obj.lo at h8 ⊢; omega
  · rw [hcc.1]; unfold Obj.lo; omega
  · rw [hcc.1]; unfold Obj.lo; omega

/-- A fresh `NBRANCH` returned by `node_new_branch` (unallocated at the callee's entry `q`, which is
at or after the activation's entry) has its first 176 bytes unallocated at the activation's entry. -/
theorem frB_of_ret {a : Act σ} (haC : a.C = Types.guestC) {Γ' : Gam} {q q' : Ptrs} {st : State σ}
    (hmo : a.p0.Mono q) (hhe : Heap a Γ' q' st) {W : BitVec 64} {o : Obj} (ho : o ∈ Γ')
    (hb : o.base = W) (ht : o.ty = Types.tNBRANCH)
    (hfr : ∀ x : BitVec 64, Overlap o.lo o.size x → ¬ q.Allocated x.toNat) : FrB a.p0 W 176 := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := hhe.1
  rw [haC] at hL
  have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hL.1 o ho).2.2.2.1
  rw [ht, Types.ty_NBRANCH] at hsz
  simp only [Types.nbranchTy] at hsz
  intro x ⟨h8, h1, h2⟩ hal
  apply hfr x ⟨h8, ?_, ?_⟩ (Spec.Mpt.Dec.allocated_mono hmo hal)
  · unfold Obj.lo; rw [hb]; exact h1
  · unfold Obj.lo; rw [hb]; omega

/-- **The hooked pair write at the state level.** Writing `V1, V2` into the value (or path) slice cells
`k, k + 1` of a node `o` of `Γ`, both licensed by the footprint, keeps `Heap` if the new slice
satisfies the hook. -/
theorem heap_pair {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {Γ : Gam} {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) {o : Obj} (ho : o ∈ Γ) {k : Nat}
    (hv : Hooks.ValSlot o.ty k) {V1 V2 : BitVec 64} (hV : Hooks.VInR Types.tVAL Γ V1 V2)
    (hF1 : a.Foot (o.cell k)) (hF2 : a.Foot (o.cell (k + 1))) :
    Heap a Γ q { s with memory := Struct.upd (Struct.upd s.memory (o.cell k) V1) (o.cell (k + 1)) V2 } := by
  obtain ⟨hG, hps, hmono, hext, hnf, hm0, hpg, hng⟩ := hh
  have hG0 := hG
  rw [haC, haH] at hG0
  obtain ⟨pp, hpp, hord0, hL0, -⟩ := id hG0
  have hpq : pp = q := by rw [hps] at hpp; exact (Option.some.inj hpp).symm
  subst hpq
  have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hL0.1 o ho).2.2.2.1
  obtain ⟨hs1, hs2⟩ := Hooks.valSlot_has hv rfl hsz
  have hlive := (hL0.1 o ho).2.2.2.2
  rw [Hooks.valSlot_heap hv] at hlive
  simp only [Region.Live] at hlive
  obtain ⟨-, o2, -⟩ := hord0
  have hE : heapEnd < 2 ^ 64 := by decide
  unfold Obj.lo at hlive
  have e1 : (o.cell k).toNat = o.base.toNat + 8 * k := by
    unfold Obj.cell; exact Spec.Mpt.Dec.toNat_add_lt (by unfold Obj.HasSlot at hs1; omega)
  have e2 : (o.cell (k + 1)).toNat = o.base.toNat + 8 * (k + 1) := by
    unfold Obj.cell; exact Spec.Mpt.Dec.toNat_add_lt (by unfold Obj.HasSlot at hs2; omega)
  have hne : o.cell (k + 1) ≠ o.cell k := fun e => by
    have := congrArg BitVec.toNat e; omega
  have hmod : ModifiesOnly (fun x => x = o.cell k ∨ x = o.cell (k + 1)) s.memory
      (Struct.upd (Struct.upd s.memory (o.cell k) V1) (o.cell (k + 1)) V2) := by
    intro x hx
    rw [Struct.upd_ne (fun e => hx (Or.inr e)), Struct.upd_ne (fun e => hx (Or.inl e))]
  have hV' : Hooks.VInR Types.tVAL Γ
      (rd (Struct.upd (Struct.upd s.memory (o.cell k) V1) (o.cell (k + 1)) V2) (o.cell k))
      (rd (Struct.upd (Struct.upd s.memory (o.cell k) V1) (o.cell (k + 1)) V2) (o.cell (k + 1))) := by
    rw [Struct.rd_upd_ne hne.symm, Struct.rd_upd_self, Struct.rd_upd_self]
    exact hV
  refine ⟨?_, hps, hmono, hext, hnf, ?_, hpg, hng⟩
  · rw [haC, haH]
    exact Hooks.G_write_val (s := s) hG0 ho hv hmod hV'
  · intro x hx
    have h1 : (Struct.upd (Struct.upd s.memory (o.cell k) V1) (o.cell (k + 1)) V2) x = s.memory x :=
      hmod x (fun hD => by
        rcases hD with rfl | rfl
        · exact hx hF1
        · exact hx hF2)
    exact h1.trans (hm0 x hx)

/-- **`st x + n1, e1; st x + n2, e2; K`** into the value (or path) slice cells `k, k + 1` of a node of
`Γ`: one step, the final pair must satisfy the hook (`heap_pair`). -/
theorem gp_stPairK {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {L : LocalsH → Prop} {EΓ : Gam → Prop} {x : MlS} {B V1 V2 : BitVec 64} {k n1 n2 : Nat}
    (hn1 : n1 = 8 * k) (hn2 : n2 = 8 * (k + 1)) {e1 e2 : ExpHOL 64} {K : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hx : ∀ m, L m → m.lookup x = some (.val (.word B)))
    (hv1 : ∀ s : State σ, L s.locals → ev s e1 = some (.val (.word V1)))
    (hv2 : ∀ s : State σ, L s.locals → ev s e2 = some (.val (.word V2)))
    (hobj : ∀ Γ q (s : State σ), Heap a Γ q s → EΓ Γ → ∃ o ∈ Γ, o.base = B ∧ Hooks.ValSlot o.ty k ∧
      Hooks.VInR Types.tVAL Γ V1 V2 ∧ a.Foot (o.cell k) ∧ a.Foot (o.cell (k + 1)))
    (hK : HoareG σ guestCtx (GI a L (fun Γ _ _ => EΓ Γ)) K Q) :
    HoareG σ guestCtx (GI a L (fun Γ _ _ => EΓ Γ))
      (.seq (.store (.op .add [lv x, cw n1]) e1) (.seq (.store (.op .add [lv x, cw n2]) e2) K)) Q := by
  subst hn1 hn2
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ s : State σ, GI a L (fun Γ _ _ => EΓ Γ) s ∧
      t = { s with memory := Struct.upd s.memory (B + BitVec.ofNat 64 (8 * k)) V1 })
    (hoareG_store fun s hs hp w v mem hw hv hmem => ⟨rfl, s, hp, ?_⟩)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · obtain ⟨hL, -⟩ := hp
    rw [ev_add_cw (hx _ hL) (8 * k)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [hv1 s hL] at hv
    cases hv
    have := Struct.store_word hmem
    rw [this, ← hw]
  · refine hoareG_seq (R := fun r t => r = none ∧ GI a L (fun Γ _ _ => EΓ Γ) t)
      ?_ (fun r t _ hr _ h => absurd h.1 hr) (hoareG_pre hK (fun t _ h => h.2))
    refine hoareG_store fun t ht hR w v mem hw hv hmem => ?_
    obtain ⟨-, s, ⟨hL, Γ, q, he, hh, hsc, hE⟩, rfl⟩ := hR
    have hw2 := ev_add_cw (s := { s with memory := Struct.upd s.memory (B + BitVec.ofNat 64 (8 * k)) V1 })
      (hx _ hL) (8 * (k + 1))
    rw [hw2] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [hv2 { s with memory := Struct.upd s.memory (B + BitVec.ofNat 64 (8 * k)) V1 } hL] at hv
    cases hv
    have hm2 := Struct.store_word hmem
    subst hw
    obtain ⟨o, ho, hb, hvs, hV, hF1, hF2⟩ := hobj Γ q s hh hE
    have c1 : B + BitVec.ofNat 64 (8 * k) = o.cell k := by rw [Obj.cell, hb]
    have c2 : B + BitVec.ofNat 64 (8 * (k + 1)) = o.cell (k + 1) := by rw [Obj.cell, hb]
    have hm2' : mem = Struct.upd (Struct.upd s.memory (o.cell k) V1) (o.cell (k + 1)) V2 := by
      rw [← c1, ← c2]; exact hm2
    refine ⟨rfl, hL, Γ, q, he, ?_, hsc, hE⟩
    rw [hm2']
    exact heap_pair haC haH hh ho hvs hV hF1 hF2

/-- **`st x + n1, e1; st x + n2, e2`** (no continuation): the final pair must satisfy the hook. -/
theorem gp_stPair0 {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {L : LocalsH → Prop} {EΓ : Gam → Prop} {x : MlS} {B V1 V2 : BitVec 64} {k n1 n2 : Nat}
    (hn1 : n1 = 8 * k) (hn2 : n2 = 8 * (k + 1)) {e1 e2 : ExpHOL 64}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hx : ∀ m, L m → m.lookup x = some (.val (.word B)))
    (hv1 : ∀ s : State σ, L s.locals → ev s e1 = some (.val (.word V1)))
    (hv2 : ∀ s : State σ, L s.locals → ev s e2 = some (.val (.word V2)))
    (hobj : ∀ Γ q (s : State σ), Heap a Γ q s → EΓ Γ → ∃ o ∈ Γ, o.base = B ∧ Hooks.ValSlot o.ty k ∧
      Hooks.VInR Types.tVAL Γ V1 V2 ∧ a.Foot (o.cell k) ∧ a.Foot (o.cell (k + 1))) :
    HoareG σ guestCtx (GI a L (fun Γ _ _ => EΓ Γ))
      (.seq (.store (.op .add [lv x, cw n1]) e1) (.store (.op .add [lv x, cw n2]) e2))
      (GP a L (fun Γ _ _ => EΓ Γ) Rv) := by
  subst hn1 hn2
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ s : State σ, GI a L (fun Γ _ _ => EΓ Γ) s ∧
      t = { s with memory := Struct.upd s.memory (B + BitVec.ofNat 64 (8 * k)) V1 })
    (hoareG_store fun s hs hp w v mem hw hv hmem => ⟨rfl, s, hp, ?_⟩)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · obtain ⟨hL, -⟩ := hp
    rw [ev_add_cw (hx _ hL) (8 * k)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [hv1 s hL] at hv
    cases hv
    have := Struct.store_word hmem
    rw [this, ← hw]
  · refine hoareG_store fun t ht hR w v mem hw hv hmem => ?_
    obtain ⟨-, s, ⟨hL, Γ, q, he, hh, hsc, hE⟩, rfl⟩ := hR
    have hw2 := ev_add_cw (s := { s with memory := Struct.upd s.memory (B + BitVec.ofNat 64 (8 * k)) V1 })
      (hx _ hL) (8 * (k + 1))
    rw [hw2] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [hv2 { s with memory := Struct.upd s.memory (B + BitVec.ofNat 64 (8 * k)) V1 } hL] at hv
    cases hv
    have hm2 := Struct.store_word hmem
    subst hw
    obtain ⟨o, ho, hb, hvs, hV, hF1, hF2⟩ := hobj Γ q s hh hE
    have c1 : B + BitVec.ofNat 64 (8 * k) = o.cell k := by rw [Obj.cell, hb]
    have c2 : B + BitVec.ofNat 64 (8 * (k + 1)) = o.cell (k + 1) := by rw [Obj.cell, hb]
    have hm2' : mem = Struct.upd (Struct.upd s.memory (o.cell k) V1) (o.cell (k + 1)) V2 := by
      rw [← c1, ← c2]; exact hm2
    refine ⟨fun _ => ⟨hL, Γ, q, he, ?_, hsc, hE⟩, fun r' h => by cases h⟩
    rw [hm2']
    exact heap_pair haC haH hh ho hvs hV hF1 hF2

/-- **`st x + n1, e1; st x + n2, e2; K`** into the value (or path) slice cells `k, k + 1` of a node of
`Γ`: one step, the final pair must satisfy the hook (`heap_pair`). -/
theorem gp_stPairKM {a : Act σ} (haC : a.C = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop} {x : MlS} {B V1 V2 : BitVec 64} {k n1 n2 : Nat}
    (hn1 : n1 = 8 * k) (hn2 : n2 = 8 * (k + 1)) {e1 e2 : ExpHOL 64} {K : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hx : ∀ m, L m → m.lookup x = some (.val (.word B)))
    (hv1 : ∀ s : State σ, L s.locals → ev s e1 = some (.val (.word V1)))
    (hv2 : ∀ s : State σ, L s.locals → ev s e2 = some (.val (.word V2)))
    (hobj : ∀ Γ q (s : State σ), Heap a Γ q s → E Γ q s.memory → ∃ o ∈ Γ, o.base = B ∧ Hooks.ValSlot o.ty k ∧
      Hooks.VInR Types.tVAL Γ V1 V2 ∧ a.Foot (o.cell k) ∧ a.Foot (o.cell (k + 1)))
    (hEm : ∀ Γ q (s : State σ) (o : Obj), Heap a Γ q s → E Γ q s.memory → o ∈ Γ → o.base = B →
      Hooks.ValSlot o.ty k →
      E Γ q (Struct.upd (Struct.upd s.memory (o.cell k) V1) (o.cell (k + 1)) V2))
    (hK : HoareG σ guestCtx (GI a L E) K Q) :
    HoareG σ guestCtx (GI a L E)
      (.seq (.store (.op .add [lv x, cw n1]) e1) (.seq (.store (.op .add [lv x, cw n2]) e2) K)) Q := by
  subst hn1 hn2
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ s : State σ, GI a L E s ∧
      t = { s with memory := Struct.upd s.memory (B + BitVec.ofNat 64 (8 * k)) V1 })
    (hoareG_store fun s hs hp w v mem hw hv hmem => ⟨rfl, s, hp, ?_⟩)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · obtain ⟨hL, -⟩ := hp
    rw [ev_add_cw (hx _ hL) (8 * k)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [hv1 s hL] at hv
    cases hv
    have := Struct.store_word hmem
    rw [this, ← hw]
  · refine hoareG_seq (R := fun r t => r = none ∧ GI a L E t)
      ?_ (fun r t _ hr _ h => absurd h.1 hr) (hoareG_pre hK (fun t _ h => h.2))
    refine hoareG_store fun t ht hR w v mem hw hv hmem => ?_
    obtain ⟨-, s, ⟨hL, Γ, q, he, hh, hsc, hE⟩, rfl⟩ := hR
    have hw2 := ev_add_cw (s := { s with memory := Struct.upd s.memory (B + BitVec.ofNat 64 (8 * k)) V1 })
      (hx _ hL) (8 * (k + 1))
    rw [hw2] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    rw [hv2 { s with memory := Struct.upd s.memory (B + BitVec.ofNat 64 (8 * k)) V1 } hL] at hv
    cases hv
    have hm2 := Struct.store_word hmem
    subst hw
    obtain ⟨o, ho, hb, hvs, hV, hF1, hF2⟩ := hobj Γ q s hh hE
    have c1 : B + BitVec.ofNat 64 (8 * k) = o.cell k := by rw [Obj.cell, hb]
    have c2 : B + BitVec.ofNat 64 (8 * (k + 1)) = o.cell (k + 1) := by rw [Obj.cell, hb]
    have hm2' : mem = Struct.upd (Struct.upd s.memory (o.cell k) V1) (o.cell (k + 1)) V2 := by
      rw [← c1, ← c2]; exact hm2
    refine ⟨rfl, hL, Γ, q, he, ?_, hsc, ?_⟩
    · rw [hm2']
      exact heap_pair haC haH hh ho hvs hV hF1 hF2
    · rw [hm2']
      exact hEm Γ q s o hh hE ho hb hvs

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.foot_of_cap
#print axioms InitECandidate.Solver.MemSafe.Ins.foot_of_fresh
#print axioms InitECandidate.Solver.MemSafe.Ins.frB_of_ret
#print axioms InitECandidate.Solver.MemSafe.Ins.heap_pair
#print axioms InitECandidate.Solver.MemSafe.Ins.gp_stPairK
#print axioms InitECandidate.Solver.MemSafe.Ins.gp_stPairKM
#print axioms InitECandidate.Solver.MemSafe.Ins.gp_stPair0
