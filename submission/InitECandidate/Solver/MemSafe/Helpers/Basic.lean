import InitECandidate.Solver.MemSafe.Summary
import InitECandidate.Solver.MemSafe.HoareX
import InitECandidate.Solver.Spec.Inv.BePreserved
import InitECandidate.Solver.Spec.Inv.HtabCode
import InitECandidate.Solver.Spec.Memeq

set_option autoImplicit false

/-!
# Helper summaries (M3): the generic adapters

Most helpers (`memcpy`, `memzero`, `buffer_read`, the byte stores, ...) write only into their
argument buffers and touch no global. Their summaries are proved in two steps:

1. a **footprint spec** (`FootSpec`): every good result keeps the globals and changes memory only
   in a set `R vs` of cells, provided a precondition `Pre vs` on the argument words (typically
   the no-wrap bound of a buffer, which `BufOK` implies: `bufOK_bound`);
2. **`summ_of_foot`**: when `R vs` lies in the argument cells of the signature and `ArgsOK`
   gives `Pre`, the footprint spec gives `Summ` with `Γ' = Γ` and unchanged allocator pointers.
   `G` survives because every changed cell is a buffer cell: a `scalar` cell of a `Γ` object
   or a cell outside every `Γ` object (`G_buf`).

Side conditions:
* `TagSlots C`: tagged (union-member) types have a non-`scalar` slot 0, so a buffer write never
  overwrites a tag;
* `AlignedDom X`: the memory domain is 8-aligned (`alignedDom_guestCtx`, `Helpers/GuestCtx.lean`), so a word store hits
  exactly the aligned cell it names.

Also here: `funSpecG_of_hoareG`, the store-footprint lemmas (`stores_mod`, `storeByte_mod`),
the buffer cell lemmas callers need (`bufOK_bound`, `bufOK_sub`, `bufOK_zero`).
-/

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## Side conditions -/

/-- Tagged (union-member) types do not have a `scalar` slot 0. -/
def TagSlots (C : Cfg) : Prop :=
  ∀ t tag, C.tags.lookup t = some tag → (C.ty t).slot 0 ≠ .scalar

/-- The memory domain is 8-aligned. -/
def AlignedDom (X : Ctx 64) : Prop := ∀ a, X.memaddrs a → a.toNat % 8 = 0

/-! ## Buffer cells and `G` -/

/-- A cell that may be written with arbitrary data without breaking `G`: a `scalar` cell of a
`Γ` object, or a cell outside every `Γ` object. -/
def BufCell (C : Cfg) (Γ : Gam) (a : BitVec 64) : Prop := SCell C Γ a ∨ ¬ InObj Γ a.toNat

/-- **`G` under writes of buffer cells**, with the globals, the domain and the byte order
unchanged. -/
theorem G_buf {σ : Type} {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    {Γ : Gam} {s t : State σ} (hG : G C H Γ s) (hgl : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R s.memory t.memory) (hR : ∀ a, R a → BufCell C Γ a) :
    G C H Γ t := by
  obtain ⟨p, hps, hord, hL, hF, hTg, hGl, hW⟩ := hG
  have hptrs : ptrsOf t = ptrsOf s := by unfold ptrsOf gword; rw [hgl]
  have keep : ∀ o ∈ Γ, ∀ k, o.HasSlot k → (C.ty o.ty).slot k ≠ .scalar →
      t.memory (o.cell k) = s.memory (o.cell k) := by
    intro o ho k hk hns
    apply hmod
    intro hr
    rcases hR _ hr with ⟨o', ho', k', hk', hsc, he⟩ | hn
    · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
      exact hns hsc
    · exact hn (cell_in hord hL ho hk)
  refine ⟨p, hptrs ▸ hps, hord, hL, ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    by_cases hsc : (C.ty o.ty).slot k = .scalar
    · rw [hsc]; trivial
    · have hr : rd t.memory (o.cell k) = rd s.memory (o.cell k) := by
        rw [rd, rd, keep o ho k hk hsc]
      rw [hr]
      exact hF o ho k hk
  · intro o ho tag ht
    obtain ⟨h0, hc⟩ := slot0 hL ho
    have e := keep o ho 0 h0 (hT o.ty tag ht)
    rw [hc] at e
    have hr : rd t.memory o.base = rd s.memory o.base := by rw [rd, rd, e]
    rw [hr]
    exact hTg o ho tag ht
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    refine ⟨v, ?_, hf⟩
    unfold gword at hv ⊢
    rw [hgl]
    exact hv
  · intro o ho
    refine (hH.2 Γ s t o (hW o ho) hd hbe (fun a ha => ?_) (fun g _ => by rw [hgl])).1
    obtain ⟨o', ho', k, hk, hprot, rfl⟩ := hH.1 Γ s o a ho (hW o ho) ha
    exact keep o' ho' k hk (by rw [hprot]; decide)

/-- The argument buffers of fitting arguments are buffer cells (and allocated when outside
`Γ`). -/
theorem argCells_buf {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hA : ArgsOK C Γ p ps vs) {a : BitVec 64} (ha : ArgCells ps vs a) :
    SCell C Γ a ∨ (¬ InObj Γ a.toNat ∧ p.Allocated a.toNat) := by
  obtain ⟨i, w, hw, h⟩ := ha
  unfold argW at hw
  split at hw
  · rename_i v hv
    rcases h with ⟨n, hps, hov⟩ | ⟨j, c, d, x, hps, hx, hov⟩
    · obtain ⟨w', hw', hb⟩ := hA.2 i _ v hps hv
      rw [hw] at hw'
      cases hw'
      exact hb a hov
    · obtain ⟨w', x', hw', hx', hb⟩ := hA.2 i _ v hps hv
      rw [hw] at hw'
      cases hw'
      rw [hx] at hx'
      cases hx'
      exact hb a hov
  · cases hw

theorem bufCell_of_arg {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hA : ArgsOK C Γ p ps vs) {a : BitVec 64} (ha : ArgCells ps vs a) : BufCell C Γ a := by
  rcases argCells_buf hA ha with h | h
  · exact Or.inl h
  · exact Or.inr h.1

/-! ## Buffer bounds (what callers and helpers use) -/

/-- A nonempty buffer ends below `scratchEnd`: its last cell is allocated or a `Γ` cell. -/
theorem bufOK_bound {C : Cfg} {Γ : Gam} {p : Ptrs} {b n : Nat} (hord : p.Ordered)
    (hL : Layout C p Γ) (hb64 : b < 2 ^ 64) (hb : BufOK C Γ p b n) : n = 0 ∨ b + n ≤ scratchEnd := by
  by_cases hn : n = 0
  · exact Or.inl hn
  · right
    have hse : scratchEnd < 2 ^ 64 - 1 := by decide
    let a0 := min (b + n - 1) (2 ^ 64 - 1)
    let a := a0 - a0 % 8
    have ha64 : a < 2 ^ 64 := by omega
    have hov : Overlap b n (BitVec.ofNat 64 a) := by
      unfold Overlap
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha64]
      omega
    have hcell : a + 8 ≤ scratchEnd := by
      rcases hb _ hov with ⟨o, ho, k, hk, -, he⟩ | ⟨-, hal⟩
      · obtain ⟨h1, h2⟩ := cell_toNat hord hL ho hk
        rw [← he, BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha64] at h1
        unfold Obj.HasSlot at hk
        unfold Obj.lo at h1 h2
        omega
      · rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha64] at hal
        unfold Ptrs.Allocated at hal
        unfold Ptrs.Ordered at hord
        have : a % 8 = 0 := by omega
        simp only [heapBase, heapEnd, scratchEnd] at hal hord hse ⊢
        omega
    omega

/-- The empty buffer at an aligned address. (`Overlap b 0 a` holds for the cell `a` containing
an unaligned `b`, so an unaligned empty buffer still needs that cell.) -/
theorem bufOK_zero {C : Cfg} {Γ : Gam} {p : Ptrs} {b : Nat} (hb : b % 8 = 0) :
    BufOK C Γ p b 0 := by
  intro a ha
  unfold Overlap at ha
  omega

/-- A sub-range of a buffer is a buffer. -/
theorem bufOK_sub {C : Cfg} {Γ : Gam} {p : Ptrs} {b n b' n' : Nat} (hb : BufOK C Γ p b n)
    (h1 : b ≤ b') (h2 : b' + n' ≤ b + n) : BufOK C Γ p b' n' := by
  intro a ha
  apply hb
  unfold Overlap at ha ⊢
  omega

/-! ## Footprint specs and the adapter -/

/-- **Footprint spec**: every good result of `f` keeps the globals and changes memory only in
`R vs`, when the argument words satisfy `Pre`. -/
def FootSpec (σ : Type) (X : Ctx 64) (f : MlS) (Pre : List (ValueHOL 64) → Prop)
    (R : List (ValueHOL 64) → BitVec 64 → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → Pre vs →
    t.globals = s.globals ∧ ModifiesOnly (R vs) s.memory t.memory)

/-- Every good result of `f` keeps the domain and the byte order. -/
theorem funSpec_dom {σ : Type} {X : Ctx 64} (f : MlS) :
    FunSpec σ X f (fun _ s _ t => t.memaddrs = s.memaddrs ∧ t.be = s.be) := by
  intro _ body _ _ _ s _ _ _ _
  exact ⟨memaddrs_preserved s body, Spec.Inv.be_preserved s body⟩

theorem newFresh_same {Γ : Gam} {p p' : Ptrs} : NewFresh Γ Γ p p' :=
  fun o ho _ h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩

/-- **From a footprint spec to a summary.** The footprint lies in the argument buffers of the
signature, `ArgsOK` gives the precondition, and the signature declares no result type. -/
theorem summ_of_foot {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H)
    (hT : TagSlots C) {f : MlS} {sg : Sig} (hret : sg.ret = [])
    {Pre : List (ValueHOL 64) → Prop} {R : List (ValueHOL 64) → BitVec 64 → Prop}
    (hf : FootSpec σ X f Pre R)
    (hpre : ∀ Γ p vs, p.Ordered → Layout C p Γ → ArgsOK C Γ p sg.params vs → Pre vs)
    (hR : ∀ vs a, Pre vs → R vs a → ArgCells sg.params vs a) : Summ σ X C H f sg := by
  intro vs body callee rs hl s hs hloc r hr hg Γ hG hargs _
  obtain ⟨p, hp, hA⟩ := hargs
  have hG0 := hG
  obtain ⟨p0, hp0, hord, hL, -⟩ := hG0
  rw [hp] at hp0
  cases hp0
  have hP := hpre Γ p vs hord hL hA
  obtain ⟨hgl, hmod⟩ := hf vs body callee rs hl s hs hloc r hr hg hP
  obtain ⟨hd, hbe⟩ := funSpec_dom (σ := σ) (X := X) f vs body callee rs hl s hs hloc r hr
  have hpt : ptrsOf (evaluateHOLFiniteState s body).2 = some p := by
    unfold ptrsOf gword at hp ⊢
    rw [hgl]
    exact hp
  refine ⟨Γ, p, p, ⟨hp, hpt, ⟨Nat.le_refl _, Nat.le_refl _, Nat.le_refl _⟩,
    fun o ho => ⟨o, ho, rfl, rfl, Nat.le_refl _⟩, newFresh_same,
    G_buf hH hT hG hgl hd hbe hmod (fun a ha => bufCell_of_arg hA (hR vs a hP ha)), ?_, ?_,
    fun _ => newFresh_same, ?_⟩, trivial⟩
  · exact hmod.mono fun a ha => Or.inr (Or.inl (hR vs a hP ha))
  · intro g _ _
    rw [hgl]
  · intro v _ i rt w hrt
    rw [hret] at hrt
    simp at hrt

/-! ## `FunSpec` from a `HoareG` triple -/

theorem funSpecG_of_hoareG {σ : Type} {X : Ctx 64} {f : MlS}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → R vs s0 r' t)) :
    FunSpec σ X f (fun vs s r t => Good (some r) → R vs s r t) := by
  intro vs body callee rs hl s hs hloc r hr hg
  have := h vs body callee rs hl s hs hloc s hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this r rfl

/-! ## What a store changes -/

theorem storeHOL_mod {w : BitVec 64} {v : HolWordLab 64} {dom : BitVec 64 → Prop}
    {inst : DecidablePred dom} {m m' : Mem} (h : @panMemStoreHOL 64 _ w v dom inst m = some m') :
    ModifiesOnly (fun a => a = w) m m' ∧ dom w := by
  unfold panMemStoreHOL at h
  split at h
  · rename_i hd
    cases h
    refine ⟨fun a ha => ?_, hd⟩
    simp only [if_neg ha]
  · cases h

/-- A multi-word store changes only the cells `w + 8 j`, `j < length`, all in the domain. -/
theorem stores_mod {vals : List (HolWordLab 64)} {w : BitVec 64} {dom : BitVec 64 → Prop}
    {inst : DecidablePred dom} {m m' : Mem} (h : @panMemStoresHOL 64 _ w vals dom inst m = some m') :
    ModifiesOnly (fun a => ∃ j, j < vals.length ∧ a = w + BitVec.ofNat 64 (8 * j)) m m' ∧
      ∀ j, j < vals.length → dom (w + BitVec.ofNat 64 (8 * j)) := by
  induction vals generalizing w m with
  | nil =>
      simp only [panMemStoresHOL, Option.some.injEq] at h
      subst h
      exact ⟨fun _ _ => rfl, fun j hj => absurd hj (by simp)⟩
  | cons v rest ih =>
      unfold panMemStoresHOL at h
      split at h
      · rename_i u hu
        obtain ⟨hm1, hd1⟩ := storeHOL_mod hu
        obtain ⟨hm2, hd2⟩ := ih h
        have e : panBytesInWord 64 = BitVec.ofNat 64 8 := rfl
        rw [e] at hm2 hd2
        refine ⟨fun a ha => ?_, fun j hj => ?_⟩
        · rw [hm2 a ?_, hm1 a ?_]
          · intro hw; exact ha ⟨0, by simp, by rw [hw]; simp⟩
          · rintro ⟨j, hj, rfl⟩
            refine ha ⟨j + 1, by simp; omega, ?_⟩
            rw [BitVec.add_assoc, BitVec.ofNat_add_ofNat]
            congr 2
            omega
        · cases j with
          | zero => simpa using hd1
          | succ j =>
              have := hd2 j (by simp at hj; omega)
              rw [BitVec.add_assoc, BitVec.ofNat_add_ofNat] at this
              rw [show 8 * (j + 1) = 8 + 8 * j by omega]
              exact this
      · cases h

/-- A one-word store changes only its cell, which is in the domain. -/
theorem store1_mod {x : HolWordLab 64} {w : BitVec 64} {dom : BitVec 64 → Prop}
    {inst : DecidablePred dom} {m m' : Mem} (h : @panMemStoresHOL 64 _ w [x] dom inst m = some m') :
    ModifiesOnly (fun a => a = w) m m' ∧ dom w := by
  obtain ⟨hm, hd⟩ := stores_mod h
  refine ⟨hm.mono fun a ⟨j, hj, he⟩ => ?_, by simpa using hd 0 (by simp)⟩
  simp only [List.length_singleton, Nat.lt_one_iff] at hj
  subst hj
  simpa using he

/-- The aligned cell of a byte address. -/
theorem byteAlign_toNat (w : BitVec 64) : (panByteAlignHOL w).toNat = w.toNat / 8 * 8 := by
  have hl : Nat.log2 (64 / 8) = 3 := by decide
  unfold panByteAlignHOL
  simp only [hl]
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt]
  have := w.isLt
  omega

/-- A byte store changes only the aligned cell of its address. -/
theorem storeByte_mod {m m' : Mem} {dom : BitVec 64 → Prop} {inst : DecidablePred dom}
    {be : Bool}
    {w : BitVec 64} {b : BitVec 8} (h : @panMemStoreByteWord8HOL 64 _ m dom inst be w b = some m') :
    ModifiesOnly (fun a => a = panByteAlignHOL w) m m' := by
  unfold panMemStoreByteWord8HOL at h
  dsimp only at h
  split at h
  · cases h
    intro a ha
    simp only [if_neg ha]
  · cases h

/-- A byte address inside `[b, b + n)` names a cell overlapping it. -/
theorem overlap_byte {b n : Nat} {w : BitVec 64} (h1 : b ≤ w.toNat) (h2 : w.toNat < b + n) :
    Overlap b n (panByteAlignHOL w) := by
  unfold Overlap
  rw [byteAlign_toNat]
  omega

/-- An aligned word address inside `[b, b + n)` names a cell overlapping it. -/
theorem overlap_word {b n : Nat} {w : BitVec 64} (hal : w.toNat % 8 = 0) (h1 : b ≤ w.toNat)
    (h2 : w.toNat < b + n) : Overlap b n w := by
  unfold Overlap
  omega

/-! ## Code lookups with five parameters -/

theorem lookupCode_five {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa pb pc pd pe : MlS} {sa sb sc sd se : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa), (pb, sb), (pc, sc), (pd, sd), (pe, se)], bd, rsh))
    (hnd : [pa, pb, pc, pd, pe].Nodup)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ∃ A B C D E, vs = [A, B, C, D, E] ∧
      shapeEqHOL sa (shapeOfHOLExact A) = true ∧ shapeEqHOL sb (shapeOfHOLExact B) = true ∧
      shapeEqHOL sc (shapeOfHOLExact C) = true ∧ shapeEqHOL sd (shapeOfHOLExact D) = true ∧
      shapeEqHOL se (shapeOfHOLExact E) = true ∧
      callee.lookup pa = some A ∧ callee.lookup pb = some B ∧ callee.lookup pc = some C ∧
      callee.lookup pd = some D ∧ callee.lookup pe = some E := by
  simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
    List.nodup_nil, and_true] at hnd
  obtain ⟨⟨hab, hac, had, hae⟩, ⟨hbc, hbd, hbe⟩, ⟨hcd, hce⟩, hde⟩ := hnd
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, hall⟩ := hcond
      match vs, hlen, hall with
      | [A, B, C, D, E], _, hall =>
          simp only [List.zip_cons_cons, List.zip_nil_right, List.all_cons, List.all_nil,
            Bool.and_true, Bool.and_eq_true] at hall
          refine ⟨rfl, rfl, A, B, C, D, E, rfl, hall.1, hall.2.1, hall.2.2.1, hall.2.2.2.1,
            hall.2.2.2.2, ?_, ?_, ?_, ?_, ?_⟩
          · simp [hab, hac, had, hae]
          · simp [hbc, hbd, hbe]
          · simp [hcd, hce]
          · simp [hde]
          · simp
    · simp at hx

theorem lookupCode_six {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa pb pc pd pe pf : MlS} {sa sb sc sd se sf : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa), (pb, sb), (pc, sc), (pd, sd), (pe, se), (pf, sf)], bd, rsh))
    (hnd : [pa, pb, pc, pd, pe, pf].Nodup)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ∃ A B C D E F, vs = [A, B, C, D, E, F] ∧
      shapeEqHOL sa (shapeOfHOLExact A) = true ∧ shapeEqHOL sb (shapeOfHOLExact B) = true ∧
      shapeEqHOL sc (shapeOfHOLExact C) = true ∧ shapeEqHOL sd (shapeOfHOLExact D) = true ∧
      shapeEqHOL se (shapeOfHOLExact E) = true ∧ shapeEqHOL sf (shapeOfHOLExact F) = true ∧
      callee.lookup pa = some A ∧ callee.lookup pb = some B ∧ callee.lookup pc = some C ∧
      callee.lookup pd = some D ∧ callee.lookup pe = some E ∧ callee.lookup pf = some F := by
  simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
    List.nodup_nil, and_true] at hnd
  obtain ⟨⟨hab, hac, had, hae, haf⟩, ⟨hbc, hbd, hbe, hbf⟩, ⟨hcd, hce, hcf⟩, ⟨hde, hdf⟩, hef⟩ := hnd
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, hall⟩ := hcond
      match vs, hlen, hall with
      | [A, B, C, D, E, F], _, hall =>
          simp only [List.zip_cons_cons, List.zip_nil_right, List.all_cons, List.all_nil,
            Bool.and_true, Bool.and_eq_true] at hall
          refine ⟨rfl, rfl, A, B, C, D, E, F, rfl, hall.1, hall.2.1, hall.2.2.1, hall.2.2.2.1,
            hall.2.2.2.2.1, hall.2.2.2.2.2, ?_, ?_, ?_, ?_, ?_, ?_⟩
          · simp [hab, hac, had, hae, haf]
          · simp [hbc, hbd, hbe, hbf]
          · simp [hcd, hce, hcf]
          · simp [hde, hdf]
          · simp [hef]
          · simp
    · simp at hx

theorem lookupCode_eight {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa pb pc pd pe pf pg ph : MlS} {sa sb sc sd se sf sg sh : ShapeHOL} {bd : ProgHOL 64}
    {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa), (pb, sb), (pc, sc), (pd, sd), (pe, se), (pf, sf), (pg, sg),
      (ph, sh)], bd, rsh))
    (hnd : [pa, pb, pc, pd, pe, pf, pg, ph].Nodup)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ∃ A B C D E F G H, vs = [A, B, C, D, E, F, G, H] ∧
      shapeEqHOL sa (shapeOfHOLExact A) = true ∧ shapeEqHOL sb (shapeOfHOLExact B) = true ∧
      shapeEqHOL sc (shapeOfHOLExact C) = true ∧ shapeEqHOL sd (shapeOfHOLExact D) = true ∧
      shapeEqHOL se (shapeOfHOLExact E) = true ∧ shapeEqHOL sf (shapeOfHOLExact F) = true ∧
      shapeEqHOL sg (shapeOfHOLExact G) = true ∧ shapeEqHOL sh (shapeOfHOLExact H) = true ∧
      callee.lookup pa = some A ∧ callee.lookup pb = some B ∧ callee.lookup pc = some C ∧
      callee.lookup pd = some D ∧ callee.lookup pe = some E ∧ callee.lookup pf = some F ∧
      callee.lookup pg = some G ∧ callee.lookup ph = some H := by
  simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
    List.nodup_nil, and_true] at hnd
  obtain ⟨⟨hab, hac, had, hae, haf, hag, hah⟩, ⟨hbc, hbd, hbe, hbf, hbg, hbh⟩,
    ⟨hcd, hce, hcf, hcg, hch⟩, ⟨hde, hdf, hdg, hdh⟩, ⟨hef, heg, heh⟩, ⟨hfg, hfh⟩, hgh⟩ := hnd
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, hall⟩ := hcond
      match vs, hlen, hall with
      | [A, B, C, D, E, F, G, H], _, hall =>
          simp only [List.zip_cons_cons, List.zip_nil_right, List.all_cons, List.all_nil,
            Bool.and_true, Bool.and_eq_true] at hall
          refine ⟨rfl, rfl, A, B, C, D, E, F, G, H, rfl, hall.1, hall.2.1, hall.2.2.1,
            hall.2.2.2.1, hall.2.2.2.2.1, hall.2.2.2.2.2.1, hall.2.2.2.2.2.2.1, hall.2.2.2.2.2.2.2,
            ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
          · simp [hab, hac, had, hae, haf, hag, hah]
          · simp [hbc, hbd, hbe, hbf, hbg, hbh]
          · simp [hcd, hce, hcf, hcg, hch]
          · simp [hde, hdf, hdg, hdh]
          · simp [hef, heg, heh]
          · simp [hfg, hfh]
          · simp [hgh]
          · simp
    · simp at hx

end InitECandidate.Solver.MemSafe.Helpers
