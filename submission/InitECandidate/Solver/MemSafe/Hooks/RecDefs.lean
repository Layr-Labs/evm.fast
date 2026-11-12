import InitECandidate.Solver.MemSafe.Hooks.List

/-!
# Record hooks: a type-indexed table of record invariants over any base hook family

A **record entry** `RecD` is a per-type invariant on decoded records (a transaction, a header, a
BAL account, …): the type `ty`, the invariant `wf Γ m o` (reading memory only), its footprint
`fp Γ m o` (the cells `wf` reads; `prot` cells of record objects of `Γ`: the record itself or
the sub-arrays it names), the dependency relation `ref` (the bases of the objects the invariant
needs), and five laws (`cells`, `frame`, `mono`, `shrink`, `refHeap`). A table `T : List RecD`
is type-indexed: the invariant of an object `o` is the conjunction of the entries with
`e.ty = o.ty` (types without entries, e.g. the sub-array types, are unhooked).

**`extR T B`** extends any base family `B` by the table `T` (as `guestHooksJL` extended
`guestHooksJ`): `wf = B.wf ∧ RecW T`, `fp = B.fp ∨ RecFp T`, release relation
`refR T Ref = Ref ∨ RecRef T`. Every law is proved **generically in `T` and `B`** from the
entries' laws and the decided facts `RecTyOK` (a record type is none of the hooked or special
types of the guest families), so adding a record type is one more entry in `T`, with no change
to the family or to these proofs.

Laws (each from the same law of `B`): `lawful_extR`, `mono_extR`, `shrinkR_extR`, `ev_extR`,
`hookEV_extR`, `hookCK_extR`, **`guest_extR`** (`Shards.GuestHooks`), `ckWf_extR`, `glob_extR`,
`frameCfg_extR`, `drvCfg_extR`, **`htab_extR`** (`HtabHooks`), **`lst_extR`** (`LstHooks`).
The frame-side ones (`RelCfg`, `RdHooks`, `NewHooksL`, `JHooks`) are in `Hooks/RecFr.lean`.

`RecHooks T H` (what record constructors and users need of a family) and `recHooks_extR`.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Struct InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec

variable {σ : Type}

/-! ## Record types -/

/-- A record type: unhooked by the guest base families and none of the special types. -/
def RecTyOK (t : Nat) : Prop :=
  hkOf t = .none ∧ t ≠ tJOURNAL ∧ t ∉ lstTys ∧ ¬ IsLstA t ∧ t ≠ tCK ∧ t ≠ tB8 ∧ t ≠ tSTACK ∧
    t ≠ tMEM ∧ t ≠ tHTAs ∧ t < ownBase ∧
    ((t ≠ tMSGh ∧ t ≠ tMSGs) ∧ t ≠ tBOS ∧ t ≠ tBO ∧ t ≠ tMCO)

instance (t : Nat) : Decidable (RecTyOK t) := by unfold RecTyOK IsLstA; infer_instance

theorem recTy_ne_ev {t : Nat} (h : RecTyOK t) : t ≠ tEV := by
  rintro rfl; exact absurd h.1 (by decide)

theorem recTy_ne_msg {t : Nat} (h : RecTyOK t) : t ≠ tMSGh ∧ t ≠ tMSGs :=
  h.2.2.2.2.2.2.2.2.2.2.1

/-- Record types are no block types (package K: `tBOS`, `tBO`, `tMCO`). -/
theorem recTy_ne_block {t : Nat} (h : RecTyOK t) : t ≠ tBOS ∧ t ≠ tBO ∧ t ≠ tMCO :=
  h.2.2.2.2.2.2.2.2.2.2.2

theorem recTy_not_tab {t : Nat} (h : RecTyOK t) : ¬ IsTabTy t := by
  rintro (hk | rfl | hk)
  · rw [h.1] at hk; cases hk
  · exact h.2.2.2.2.2.2.2.2.1 rfl
  · exact absurd hk (by have := h.2.2.2.2.2.2.2.2.2.1; omega)

/-! ## Entries and the extension -/

/-- **A record entry**: the invariant of the objects of type `ty` and its laws. -/
structure RecD where
  ty : Nat
  wf : Gam → Mem → Obj → Prop
  fp : Gam → Mem → Obj → BitVec 64 → Prop
  ref : Gam → Mem → Obj → BitVec 64 → Prop
  hty : RecTyOK ty
  /-- footprint cells are `prot` slots of record objects of `Γ`, inside them -/
  cells : ∀ (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64), GamOK Γ → o ∈ Γ → o.ty = ty →
    wf Γ m o → fp Γ m o a → ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ k, x.HasSlot k ∧
      (guestC.ty x.ty).slot k = .prot ∧ a = x.cell k ∧ x.lo ≤ a.toNat ∧ a.toNat < x.hi
  /-- the invariant and its footprint read only the footprint -/
  frame : ∀ (Γ : Gam) (m m' : Mem) (o : Obj), o.ty = ty → wf Γ m o →
    (∀ a, fp Γ m o a → m' a = m a) → wf Γ m' o ∧ fp Γ m' o = fp Γ m o
  /-- the invariant survives laid-out extensions of `Γ` -/
  mono : ∀ (Γ Γ' : Gam) (m : Mem) (p : Ptrs) (o o' : Obj), Layout guestC p Γ' → Ext Γ Γ' →
    o ∈ Γ → o' ∈ Γ' → o'.base = o.base → o'.ty = o.ty → o.ty = ty → wf Γ m o → wf Γ' m o'
  /-- the invariant survives dropping objects it does not depend on -/
  shrink : ∀ (Γ Γs : Gam) (m : Mem) (o : Obj), (∀ o' ∈ Γs, o' ∈ Γ) → o ∈ Γs → o.ty = ty →
    wf Γ m o → (∀ x ∈ Γ, ref Γ m o x.base → x ∈ Γs) → wf Γs m o
  /-- the objects it depends on are heap objects -/
  refHeap : ∀ (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) (p : Ptrs), Layout guestC p Γ →
    o ∈ Γ → o.ty = ty → wf Γ m o → ref Γ m o b → ∀ x ∈ Γ, x.base = b →
      (guestC.ty x.ty).region = .heap

/-- The record invariant of `o`: every entry of its type holds. -/
def RecW (T : List RecD) (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  ∀ e ∈ T, e.ty = o.ty → o ∈ Γ ∧ GamOK Γ ∧ e.wf Γ m o

/-- The record footprint of `o` (guarded by the invariant). -/
def RecFp (T : List RecD) (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) : Prop :=
  ∃ e ∈ T, e.ty = o.ty ∧ o ∈ Γ ∧ GamOK Γ ∧ e.wf Γ m o ∧ e.fp Γ m o a

/-- The objects the record invariant of `o` depends on. -/
def RecRef (T : List RecD) (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) : Prop :=
  ∃ e ∈ T, e.ty = o.ty ∧ e.ref Γ m o b

/-- **The extension of a base family `B` by the record table `T`.** -/
def extR (T : Bool → List RecD) (B : Hooks σ) : Hooks σ :=
  ⟨fun Γ s o => B.wf Γ s o ∧ RecW (T s.be) Γ s.memory o,
    fun Γ s o a => B.fp Γ s o a ∨ RecFp (T s.be) Γ s.memory o a⟩

/-- The release relation of the extension. -/
def refR (T : Bool → List RecD) (Ref : Gam → State σ → Obj → BitVec 64 → Prop) :
    Gam → State σ → Obj → BitVec 64 → Prop :=
  fun Γ s o b => Ref Γ s o b ∨ RecRef (T s.be) Γ s.memory o b

theorem extR_wf (T : Bool → List RecD) (B : Hooks σ) (Γ : Gam) (s : State σ) (o : Obj) :
    (extR T B).wf Γ s o = (B.wf Γ s o ∧ RecW (T s.be) Γ s.memory o) := rfl
theorem extR_fp (T : Bool → List RecD) (B : Hooks σ) (Γ : Gam) (s : State σ) (o : Obj) (a : BitVec 64) :
    (extR T B).fp Γ s o a = (B.fp Γ s o a ∨ RecFp (T s.be) Γ s.memory o a) := rfl

/-! ## Basic facts -/

/-- Objects of a non-record type carry the trivial record invariant. -/
theorem recW_triv {T : List RecD} {Γ : Gam} {m : Mem} {o : Obj} (h : ¬ RecTyOK o.ty) :
    RecW T Γ m o := fun e _ he => absurd (he ▸ e.hty) h

theorem recFp_ty {T : List RecD} {Γ : Gam} {m : Mem} {o : Obj} {a : BitVec 64}
    (h : RecFp T Γ m o a) : RecTyOK o.ty := by
  obtain ⟨e, -, he, -⟩ := h
  exact he ▸ e.hty

/-- **A record footprint cell** is a `prot` slot of a record object of `Γ`, inside it. -/
theorem recFp_obj {T : List RecD} {Γ : Gam} {m : Mem} {o : Obj} {a : BitVec 64}
    (h : RecFp T Γ m o a) : GamOK Γ ∧ ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ k, x.HasSlot k ∧
      (guestC.ty x.ty).slot k = .prot ∧ a = x.cell k ∧ x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨e, -, he, ho, hG, hw, hf⟩ := h
  exact ⟨hG, e.cells Γ m o a hG ho he.symm hw hf⟩

/-- A record footprint cell lies in no object of a non-record type. -/
theorem recFp_not {T : List RecD} {Γ : Gam} {m : Mem} {o y : Obj} {a : BitVec 64}
    (h : RecFp T Γ m o a) (hy : y ∈ Γ) (hyt : ¬ RecTyOK y.ty) (h1 : y.lo ≤ a.toNat)
    (h2 : a.toNat < y.hi) : False := by
  obtain ⟨hG, x, hx, hxt, -, -, -, -, h3, h4⟩ := recFp_obj h
  have e := gam_eq hG hx hy h3 h4 h1 h2
  subst e
  exact hyt hxt

/-- A record footprint cell is not in an EV or CK slot. -/
theorem recFp_evck {T : List RecD} {Γ : Gam} {m : Mem} {o y : Obj} {a : BitVec 64}
    (h : RecFp T Γ m o a) (hy : y ∈ Γ) (hty : y.ty = tEV ∨ y.ty = tCK) {k : Nat}
    (hks : 8 * k + 8 ≤ y.size) (ha : a = y.cell k) : False := by
  have hG := (recFp_obj h).1
  obtain ⟨-, h3, h4⟩ := scratch_cell hG hy (by rcases hty with h | h <;> rw [h] <;> rfl) hks
  rw [← ha] at h3 h4
  refine recFp_not h hy ?_ h3 h4
  rcases hty with h | h <;> rw [h] <;> decide

/-! ## The laws -/

section laws
variable {T : Bool → List RecD} {B : Hooks σ}

theorem lawful_extR (hB : HooksLawful guestC B) : HooksLawful guestC (extR T B) := by
  refine ⟨fun Γ s o a ho hw hf => ?_, fun Γ s s' o hw hd hbe hfp hpg => ?_⟩
  · rcases hf with hf | hf
    · exact hB.1 Γ s o a ho hw.1 hf
    · obtain ⟨-, x, hx, -, k, hks, hpr, rfl, -⟩ := recFp_obj hf
      exact ⟨x, hx, k, hks, hpr, rfl⟩
  · obtain ⟨hw1, hfp1⟩ := hB.2 Γ s s' o hw.1 hd hbe (fun a h => hfp a (Or.inl h)) hpg
    have hfr : ∀ e ∈ T s.be, e.ty = o.ty → e.wf Γ s'.memory o ∧ e.fp Γ s'.memory o = e.fp Γ s.memory o := by
      intro e he het
      obtain ⟨ho, hG, hew⟩ := hw.2 e he het
      exact e.frame Γ s.memory s'.memory o het.symm hew
        (fun a ha => hfp a (Or.inr ⟨e, he, het, ho, hG, hew, ha⟩))
    refine ⟨⟨hw1, fun e he het => ?_⟩, ?_⟩
    · have he' : e ∈ T s.be := by rw [← hbe]; exact he
      obtain ⟨ho, hG, -⟩ := hw.2 e he' het
      exact ⟨ho, hG, (hfr e he' het).1⟩
    · funext a
      apply propext
      show (B.fp Γ s' o a ∨ RecFp (T s'.be) Γ s'.memory o a) ↔ (B.fp Γ s o a ∨ RecFp (T s.be) Γ s.memory o a)
      rw [show B.fp Γ s' o a = B.fp Γ s o a from congrFun hfp1 a, hbe]
      constructor
      · rintro (h | ⟨e, he, het, ho, hG, -, hf⟩)
        · exact Or.inl h
        · exact Or.inr ⟨e, he, het, ho, hG, (hw.2 e he het).2.2, (hfr e he het).2 ▸ hf⟩
      · rintro (h | ⟨e, he, het, ho, hG, -, hf⟩)
        · exact Or.inl h
        · exact Or.inr ⟨e, he, het, ho, hG, (hfr e he het).1, ((hfr e he het).2).symm ▸ hf⟩

theorem mono_extR (hB : HooksMono guestC B) : HooksMono guestC (extR T B) := by
  intro Γ Γ' s p o o' hL hx ho ho' hb ht hw
  refine ⟨hB Γ Γ' s p o o' hL hx ho ho' hb ht hw.1, fun e he het => ?_⟩
  obtain ⟨-, -, hew⟩ := hw.2 e he (het.trans ht)
  exact ⟨ho', gamOK_of_layout hL,
    e.mono Γ Γ' s.memory p o o' hL hx ho ho' hb ht (het.trans ht).symm hew⟩

theorem shrinkR_extR {Ref : Gam → State σ → Obj → BitVec 64 → Prop}
    (hB : HooksShrinkR guestC B Ref) : HooksShrinkR guestC (extR T B) (refR T Ref) := by
  intro Γ Γs s o hsub ho hw hc
  refine ⟨hB Γ Γs s o hsub ho hw.1 (fun x hx h => hc x hx (Or.inl h)), fun e he het => ?_⟩
  obtain ⟨-, hG, hew⟩ := hw.2 e he het
  exact ⟨ho, gamOK_sub hG hsub, e.shrink Γ Γs s.memory o hsub ho het.symm hew
    (fun x hx h => hc x hx (Or.inr ⟨e, he, het, h⟩))⟩

theorem ev_extR (hB : EvHook guestC B Shards.sty) : EvHook guestC (extR T B) Shards.sty := by
  have hev : ¬ RecTyOK tEV := by decide
  refine ⟨fun Γ s o ho ht hw => hB.get Γ s o ho ht hw.1,
    fun Γ s t o ho ht hw hs hd hbe hpg hfp => ⟨hB.put Γ s t o ho ht hw.1 hs hd hbe hpg
      (fun a h hn => hfp a (Or.inl h) hn), recW_triv (by rw [ht]; exact hev)⟩,
    fun Γ s o o' a ho ho' ht' hw hf hsm => ?_,
    fun Γ s o ht => ⟨hB.stk_wf Γ s o ht, recW_triv (by rw [ht]; decide)⟩,
    fun Γ s o ht => ⟨hB.mem_wf Γ s o ht, recW_triv (by rw [ht]; decide)⟩⟩
  rcases hf with hf | hf
  · exact hB.loc Γ s o o' a ho ho' ht' hw.1 hf hsm
  · obtain ⟨k', hk', rfl⟩ := hsm
    have ht'' : o'.ty = tEV := ht'
    exact (recFp_evck hf ho' (Or.inl ht'')
      (by have := ev_size (recFp_obj hf).1 ho' ht''; have := sm_le hk'; omega) rfl).elim

theorem hookEV_extR
    (hB : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
      ∀ j ∈ evDriverSlots16, ¬ B.fp Γ s o (o'.cell j)) :
    ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
      ∀ j ∈ evDriverSlots16, ¬ (extR T B).fp Γ s o (o'.cell j) := by
  intro Γ s o o' ho' ht' j hj hf
  rcases hf with hf | hf
  · exact hB Γ s o o' ho' ht' j hj hf
  · exact recFp_evck hf ho' (Or.inl ht')
      (by have := ev_size (recFp_obj hf).1 ho' ht'; have := drv_le hj; omega) rfl

theorem hookCK_extR
    (hB : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tCK → ∀ j, j < 13 →
      ¬ B.fp Γ s o (o'.cell j)) :
    ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tCK → ∀ j, j < 13 →
      ¬ (extR T B).fp Γ s o (o'.cell j) := by
  intro Γ s o o' ho' ht' j hj hf
  rcases hf with hf | hf
  · exact hB Γ s o o' ho' ht' j hj hf
  · have hm := ((recFp_obj hf).1.1 o' ho').2.2.2.1
    rw [ht'] at hm
    have : (guestC.ty tCK).minSz = 104 := rfl
    exact recFp_evck hf ho' (Or.inr ht') (by omega) rfl

/-- **The extension meets the fold's hook hypothesis.** -/
theorem guest_extR (hB : Shards.GuestHooks B) : Shards.GuestHooks (extR T B) :=
  ⟨ev_extR hB.ev, mono_extR hB.mono, hookEV_extR hB.hookEV, hookCK_extR hB.hookCK⟩

theorem ckWf_extR (hB : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tCK → B.wf Γ s o) :
    ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tCK → (extR T B).wf Γ s o :=
  fun Γ s o ht => ⟨hB Γ s o ht, recW_triv (by rw [ht]; decide)⟩

theorem glob_extR
    (hB : ∀ (Γ : Gam) (s t : State σ) (o : Obj), B.wf Γ s o → t.memory = s.memory →
      t.memaddrs = s.memaddrs → t.be = s.be →
      (∀ g ∈ guestC.PG, g ≠ nm "ev" → g ≠ nm "cur_cont" → t.globals.lookup g = s.globals.lookup g) →
        B.wf Γ t o) :
    ∀ (Γ : Gam) (s t : State σ) (o : Obj), (extR T B).wf Γ s o → t.memory = s.memory →
      t.memaddrs = s.memaddrs → t.be = s.be →
      (∀ g ∈ guestC.PG, g ≠ nm "ev" → g ≠ nm "cur_cont" → t.globals.lookup g = s.globals.lookup g) →
        (extR T B).wf Γ t o := by
  intro Γ s t o hw hm hd hbe hpg
  refine ⟨hB Γ s t o hw.1 hm hd hbe hpg, ?_⟩
  show RecW (T t.be) Γ t.memory o
  rw [hm, hbe]
  exact hw.2

theorem frameCfg_extR (hB : HooksLawful guestC B)
    (hEV : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
      ∀ j ∈ evDriverSlots16, ¬ B.fp Γ s o (o'.cell j))
    (hCK : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tCK → ∀ j, j < 13 →
      ¬ B.fp Γ s o (o'.cell j)) :
    FrameCfg guestC (extR T B) tEV tCK :=
  Annot.frameCfg_guest (lawful_extR hB) (hookEV_extR hEV) (hookCK_extR hCK)

theorem drvCfg_extR (hF : FrameCfg guestC (extR T B) tEV tCK) (hmono : HooksMono guestC B)
    (hck : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty = tCK → B.wf Γ s o)
    (hglob : ∀ (Γ : Gam) (s t : State σ) (o : Obj), B.wf Γ s o → t.memory = s.memory →
      t.memaddrs = s.memaddrs → t.be = s.be →
      (∀ g ∈ guestC.PG, g ≠ nm "ev" → g ≠ nm "cur_cont" → t.globals.lookup g = s.globals.lookup g) →
        B.wf Γ t o) :
    DrvCfg guestC (extR T B) tEV tCK :=
  Annot.drvCfg_guest hF (mono_extR hmono) (ckWf_extR hck)
    (fun Γ s t o hw hm hd hbe hpg => glob_extR hglob Γ s t o hw hm hd hbe hpg)

/-- **The table entries' hook requirements** carry over to the extension. -/
theorem htab_extR (hB : HtabHooks B) : HtabHooks (extR T B) := by
  refine ⟨fun Γ s o ho hG hk ht => ⟨hB.make Γ s o ho hG hk ht, recW_triv ?_⟩,
    fun Γ s o ht => ⟨hB.arr Γ s o ht, recW_triv fun h => recTy_not_tab h (Or.inr ht)⟩,
    fun Γ s o hk hw => hB.get Γ s o hk hw.1, fun Γ s o o2 a hk hw ho2 hne hw2 hf ha => ?_⟩
  · exact fun h => recTy_not_tab h (Or.inl hk)
  · rcases hf with hf | hf
    · exact hB.sep Γ s o o2 a hk hw.1 ho2 hne hw2.1 hf ha
    · have hw' := hB.get Γ s o hk hw.1
      obtain ⟨x, hx, -, hxt, h1, h2⟩ := tab_obj hw' hk ha
      exact recFp_not hf hx (fun h => recTy_not_tab h hxt) h1 h2

/-- **The list entries' hook requirements** carry over to the extension. -/
theorem lst_extR (hB : LstHooks B) : LstHooks (extR T B) := by
  refine ⟨fun Γ s o ht hw => hB.get Γ s o ht hw.1,
    fun Γ s o ht hl => ⟨hB.make Γ s o ht hl, recW_triv fun h => h.2.2.1 ht⟩,
    fun Γ s o ht => ⟨hB.arr Γ s o ht, recW_triv fun h => h.2.2.2.1 ht⟩,
    fun Γ s o y a hy hf h1 h2 hyt => ?_⟩
  rcases hf with hf | hf
  · exact hB.loc Γ s o y a hy hf h1 h2 hyt
  · refine (recFp_not hf hy ?_ h1 h2).elim
    rcases hyt with h | h
    · exact fun hr => hr.2.2.1 h
    · exact fun hr => hr.2.2.2.1 h

end laws

/-! ## What record entries need of a family -/

/-- The record entries' hook requirements: a record object's hook gives its entries' invariants,
the record invariants (with base-trivial hooks) make the hook, and a byte of a record object in
a footprint belongs to a record footprint. -/
structure RecHooks (T : Bool → List RecD) (H : Hooks σ) : Prop where
  get : ∀ (Γ : Gam) (s : State σ) (o : Obj), ∀ e ∈ T s.be, e.ty = o.ty → H.wf Γ s o →
    o ∈ Γ ∧ GamOK Γ ∧ e.wf Γ s.memory o
  make : ∀ (Γ : Gam) (s : State σ) (o : Obj), RecTyOK o.ty → RecW (T s.be) Γ s.memory o → H.wf Γ s o
  loc : ∀ (Γ : Gam) (s : State σ) (o y : Obj) (a : BitVec 64), y ∈ Γ → RecTyOK y.ty →
    H.fp Γ s o a → y.lo ≤ a.toNat → a.toNat < y.hi → RecFp (T s.be) Γ s.memory o a

theorem recHooks_extR {T : Bool → List RecD} {B : Hooks σ}
    (hBt : ∀ (Γ : Gam) (s : State σ) (o : Obj), RecTyOK o.ty → B.wf Γ s o)
    (hBf : ∀ (Γ : Gam) (s : State σ) (o y : Obj) (a : BitVec 64), y ∈ Γ → RecTyOK y.ty →
      B.fp Γ s o a → y.lo ≤ a.toNat → a.toNat < y.hi → False) :
    RecHooks T (extR T B) :=
  ⟨fun Γ s o e he het hw => hw.2 e he het, fun Γ s o ht hr => ⟨hBt Γ s o ht, hr⟩,
    fun Γ s o y a hy hyt hf h1 h2 => by
      rcases hf with hf | hf
      · exact (hBf Γ s o y a hy hyt hf h1 h2).elim
      · exact hf⟩

/-! ## The journal-and-list base family -/

theorem recBase_triv : ∀ (Γ : Gam) (s : State σ) (o : Obj), RecTyOK o.ty →
    (guestHooksJL (σ := σ)).wf Γ s o :=
  fun _ _ _ h => ⟨⟨gwf_none h.1, fun hj => absurd hj h.2.1⟩, fun hl => absurd hl h.2.2.1⟩

theorem recBase_fp : ∀ (Γ : Gam) (s : State σ) (o y : Obj) (a : BitVec 64), y ∈ Γ → RecTyOK y.ty →
    (guestHooksJL (σ := σ)).fp Γ s o a → y.lo ≤ a.toNat → a.toNat < y.hi → False := by
  intro Γ s o y a hy hyt hf h1 h2
  obtain ⟨hG, x, hx, h3, h4, hk⟩ := fpJL_obj hf
  have e := gam_eq hG hy hx h1 h2 h3 h4
  subst e
  rcases hk with h | h | h | ⟨rfl, h⟩
  · exact recTy_ne_ev hyt h
  · exact recTy_not_tab hyt h
  · exact hyt.2.1 h
  · exact hyt.2.2.1 h

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.lawful_extR
#print axioms InitECandidate.Solver.MemSafe.Hooks.guest_extR
#print axioms InitECandidate.Solver.MemSafe.Hooks.htab_extR
#print axioms InitECandidate.Solver.MemSafe.Hooks.lst_extR
#print axioms InitECandidate.Solver.MemSafe.Hooks.recHooks_extR
