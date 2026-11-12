import InitECandidate.Solver.MemSafe.Frames.GasCode
import InitECandidate.Solver.MemSafe.Frames.BKeepDef

/-!
# Writing frame cells: `G`, the footprint, the chain

* `FrameCfg C H tEV tCK`: what the frame driver needs from the type table and the hooks:
  EV / CK records are distinct types of at least `EV_SIZE` / `CK_SIZE` bytes; the slots that
  `Chain` and `Φ` read are `prot`; the slots the driver writes with arbitrary words are
  `scalar` or `prot`; no hook reads a driver-written EV cell or any CK cell; `ev` / `cur_cont`
  are protected globals; `evm_empty` is a typed global.
* `SafeCells`: cells that are scalar or `prot` slots (not slot 0) of `Γ` objects, read by no
  hook. `G_safe`: `G` survives any change confined to safe cells. `mod_safe`: such a change is
  within the summary footprint (with `PW = True`).
* `frameObjs`: the EV / CK objects of the top frame; `writes_keep_chain`: changes confined to
  the top frame's EV record and its `CK_DONE` keep `ChainL` and the weights of the other frames.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- EV slots the driver writes with arbitrary words (gas, halt, output, error, running). Eon:
slot 16 (`EV_OUTPUT_N`) is `bnd` (`Fits`: below `2^32`), so it is not here: its writers store a
bounded word (`TopCells16`, `top_write16`). -/
def evDriverSlots : List Nat := [8, 9, 13, 15, 20, 23, 24]

/-- The driver slots with `EV_OUTPUT_N` (slot 16): the cells no hook reads (`hookEV`). -/
def evDriverSlots16 : List Nat := [8, 9, 13, 15, 16, 20, 23, 24]

theorem evDriverSlots_sub {j : Nat} (h : j ∈ evDriverSlots) : j ∈ evDriverSlots16 := by
  simp only [evDriverSlots16, evDriverSlots, List.mem_cons, List.mem_nil_iff, or_false] at h ⊢
  omega

theorem evDriverSlots16_of {j : Nat} (h : j ∈ evDriverSlots16) : j = 16 ∨ j ∈ evDriverSlots := by
  simp only [evDriverSlots16, evDriverSlots, List.mem_cons, List.mem_nil_iff, or_false] at h ⊢
  omega

/-- EV slots `Chain` / `Φ` read. -/
def evProtSlots : List Nat := [1, 2, 3, 4, 5, 8, 13, 18, 24, 27, 29]

/-- **Requirements on the type table and the hooks** for the frame driver. -/
structure FrameCfg (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) : Prop where
  hooks : HooksLawful C H
  ne : tEV ≠ tCK
  evSz : 280 ≤ (C.ty tEV).minSz
  ckSz : 104 ≤ (C.ty tCK).minSz
  evProt : ∀ j ∈ evProtSlots, (C.ty tEV).slot j = .prot
  ckProt : ∀ j, j < 13 → (C.ty tCK).slot j = .prot
  evDriver : ∀ j ∈ evDriverSlots, (C.ty tEV).slot j = .scalar ∨ (C.ty tEV).slot j = .prot
  ev16 : (C.ty tEV).slot 16 = .bnd
  hookEV : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV → ∀ j ∈ evDriverSlots16,
    ¬ H.fp Γ s o (o'.cell j)
  hookCK : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tCK → ∀ j, j < 13 →
    ¬ H.fp Γ s o (o'.cell j)
  pgEv : nmEv ∈ C.PG
  pgCC : nmCC ∈ C.PG
  empty : ∃ k, C.GT.lookup (nm "evm_empty") = some k
  evK : tEV ∉ keepTys
  ckK : tCK ∉ keepTys
  /-- Package L: the frame records are not log list objects. -/
  evL : tEV ∉ logTys
  ckL : tCK ∉ logTys
  /-- Package L: the frame log list headers have at least two slots. -/
  lstSz : 16 ≤ (C.ty 16).minSz
  /-- The block types live on the heap (so they are never released with a child). -/
  blkHeap : ∀ t ∈ keepTys, (C.ty t).region = .heap

theorem FrameCfg.evB {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) :
    tEV ∉ blockTys := fun h => hF.evK (keep_blk h)

theorem FrameCfg.ckB {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) :
    tCK ∉ blockTys := fun h => hF.ckK (keep_blk h)

/-! ## Safe cells -/

/-- Cells that are scalar or `prot` slots (other than slot 0) of `Γ` objects, read by no hook. -/
def SafeCells (C : Cfg) (H : Hooks σ) (Γ : Gam) (s : State σ) (R : BitVec 64 → Prop) : Prop :=
  ∀ a, R a → ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ 0 < k ∧
    ((C.ty o.ty).slot k = .scalar ∨ (C.ty o.ty).slot k = .prot) ∧ a = o.cell k ∧
    ∀ o' ∈ Γ, ¬ H.fp Γ s o' a

theorem SafeCells.or {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} {R R' : BitVec 64 → Prop}
    (h : SafeCells C H Γ s R) (h' : SafeCells C H Γ s R') :
    SafeCells C H Γ s (fun a => R a ∨ R' a) := fun a ha => ha.elim (h a) (h' a)

/-- **`G` under changes confined to safe cells.** -/
theorem G_safe {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {Γ : Gam} {s t : State σ}
    (hG : G C H Γ s) {R : BitVec 64 → Prop} (hR : SafeCells C H Γ s R)
    (hmod : ModifiesOnly R s.memory t.memory) (hg : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) : G C H Γ t := by
  have ⟨p, hps, hord, hL, _⟩ := hG
  refine G_modify hH hG (ptrsOf_congr hg) (fun g _ _ => gword_congr hg g)
    (fun g _ => by rw [hg]) hd hbe hmod ?_ ?_ ?_
  · intro o ho k hk hr
    obtain ⟨o', ho', k', hk', -, hkind, he, -⟩ := hR _ hr
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
    rcases hkind with h | h <;> rw [h] <;> trivial
  · intro o ho _ hr
    obtain ⟨o', ho', k', hk', hk0, -, he, -⟩ := hR _ hr
    obtain ⟨h0, hc⟩ := slot0 hL ho
    obtain ⟨-, rfl⟩ := cell_inj hord hL ho ho' h0 hk' (hc.trans he)
    exact absurd hk0 (Nat.lt_irrefl 0)
  · intro o ho ⟨a, hr, hf⟩
    obtain ⟨-, -, -, -, -, -, -, hno⟩ := hR a hr
    exact absurd hf (hno o ho)

/-- **Eon.** As `SafeCells`, but a `bnd` cell is also allowed when `t` holds a word below `2^32`
there (the written value of `EV_OUTPUT_N`). -/
def SafeCellsB (C : Cfg) (H : Hooks σ) (Γ : Gam) (s t : State σ) (R : BitVec 64 → Prop) : Prop :=
  ∀ a, R a → ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ 0 < k ∧
    ((C.ty o.ty).slot k = .scalar ∨ (C.ty o.ty).slot k = .prot ∨
      ((C.ty o.ty).slot k = .bnd ∧ (rd t.memory a).toNat < 2 ^ 32)) ∧ a = o.cell k ∧
    ∀ o' ∈ Γ, ¬ H.fp Γ s o' a

theorem SafeCells.toB {C : Cfg} {H : Hooks σ} {Γ : Gam} {s t : State σ}
    {R : BitVec 64 → Prop} (h : SafeCells C H Γ s R) : SafeCellsB C H Γ s t R := by
  intro a ha
  obtain ⟨o, ho, k, hk, hk0, hkind, he, hno⟩ := h a ha
  exact ⟨o, ho, k, hk, hk0, hkind.imp id Or.inl, he, hno⟩

theorem safeB_of_safe {C : Cfg} {H : Hooks σ} {Γ : Gam} {s t : State σ} {a : BitVec 64}
    (h : ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ 0 < k ∧
      ((C.ty o.ty).slot k = .scalar ∨ (C.ty o.ty).slot k = .prot) ∧ a = o.cell k ∧
      ∀ o' ∈ Γ, ¬ H.fp Γ s o' a) :
    ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ 0 < k ∧
      ((C.ty o.ty).slot k = .scalar ∨ (C.ty o.ty).slot k = .prot ∨
        ((C.ty o.ty).slot k = .bnd ∧ (rd t.memory a).toNat < 2 ^ 32)) ∧ a = o.cell k ∧
      ∀ o' ∈ Γ, ¬ H.fp Γ s o' a := by
  obtain ⟨o, ho, k, hk, hk0, hkind, he, hno⟩ := h
  exact ⟨o, ho, k, hk, hk0, hkind.imp id Or.inl, he, hno⟩

theorem SafeCellsB.or {C : Cfg} {H : Hooks σ} {Γ : Gam} {s t : State σ}
    {R R' : BitVec 64 → Prop} (h : SafeCellsB C H Γ s t R) (h' : SafeCellsB C H Γ s t R') :
    SafeCellsB C H Γ s t (fun a => R a ∨ R' a) := fun a ha => ha.elim (h a) (h' a)

/-- **`G` under changes confined to safe cells, `bnd` cells included** (eon). -/
theorem G_safeB {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {Γ : Gam} {s t : State σ}
    (hG : G C H Γ s) {R : BitVec 64 → Prop} (hR : SafeCellsB C H Γ s t R)
    (hmod : ModifiesOnly R s.memory t.memory) (hg : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) : G C H Γ t := by
  have ⟨p, hps, hord, hL, _⟩ := hG
  refine G_modify hH hG (ptrsOf_congr hg) (fun g _ _ => gword_congr hg g)
    (fun g _ => by rw [hg]) hd hbe hmod ?_ ?_ ?_
  · intro o ho k hk hr
    obtain ⟨o', ho', k', hk', -, hkind, he, -⟩ := hR _ hr
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
    rcases hkind with h | h | ⟨h, hb⟩
    · rw [h]; trivial
    · rw [h]; trivial
    · rw [h]; exact hb
  · intro o ho _ hr
    obtain ⟨o', ho', k', hk', hk0, -, he, -⟩ := hR _ hr
    obtain ⟨h0, hc⟩ := slot0 hL ho
    obtain ⟨-, rfl⟩ := cell_inj hord hL ho ho' h0 hk' (hc.trans he)
    exact absurd hk0 (Nat.lt_irrefl 0)
  · intro o ho ⟨a, hr, hf⟩
    obtain ⟨-, -, -, -, -, -, -, hno⟩ := hR a hr
    exact absurd hf (hno o ho)

/-- A change confined to cells of `Γ` objects is within the summary footprint with `PW = True`. -/
theorem mod_cells {C : Cfg} {Γ : Gam} {ps : List PT} {vs : List (ValueHOL 64)} {p : Ptrs}
    {m m' : Mem} {R : BitVec 64 → Prop}
    (hR : ∀ a, R a → ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ a = o.cell k)
    (hmod : ModifiesOnly R m m') :
    ModifiesOnly (fun a => WCell C Γ a ∨ ArgCells ps vs a ∨ ¬ p.Allocated a.toNat ∨
      (ProtCell C Γ a ∧ True)) m m' := by
  intro a ha
  refine hmod a fun hr => ha ?_
  obtain ⟨o, ho, k, hk, rfl⟩ := hR a hr
  by_cases hp : (C.ty o.ty).slot k = .prot
  · exact Or.inr (Or.inr (Or.inr ⟨⟨o, ho, k, hk, hp, rfl⟩, trivial⟩))
  · exact Or.inl ⟨o, ho, k, hk, hp, rfl⟩

theorem mod_safe {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} {ps : List PT}
    {vs : List (ValueHOL 64)} {p : Ptrs} {m m' : Mem} {R : BitVec 64 → Prop}
    (hR : SafeCells C H Γ s R) (hmod : ModifiesOnly R m m') :
    ModifiesOnly (fun a => WCell C Γ a ∨ ArgCells ps vs a ∨ ¬ p.Allocated a.toNat ∨
      (ProtCell C Γ a ∧ True)) m m' :=
  mod_cells (fun a hr => let ⟨o, ho, k, hk, _, _, he, _⟩ := hR a hr; ⟨o, ho, k, hk, he⟩) hmod

theorem mod_safeB {C : Cfg} {H : Hooks σ} {Γ : Gam} {s t : State σ} {ps : List PT}
    {vs : List (ValueHOL 64)} {p : Ptrs} {m m' : Mem} {R : BitVec 64 → Prop}
    (hR : SafeCellsB C H Γ s t R) (hmod : ModifiesOnly R m m') :
    ModifiesOnly (fun a => WCell C Γ a ∨ ArgCells ps vs a ∨ ¬ p.Allocated a.toNat ∨
      (ProtCell C Γ a ∧ True)) m m' :=
  mod_cells (fun a hr => let ⟨o, ho, k, hk, _, _, he, _⟩ := hR a hr; ⟨o, ho, k, hk, he⟩) hmod

theorem modifiesOnly_refl (R : BitVec 64 → Prop) (m : Mem) : ModifiesOnly R m m := fun _ _ => rfl

theorem modifiesOnly_upd {R : BitVec 64 → Prop} {m m' : Mem} (h : ModifiesOnly R m m')
    {w : BitVec 64} (hw : R w) (x : BitVec 64) : ModifiesOnly R m (upd m' w x) := by
  intro a ha
  have : a ≠ w := fun e => ha (e ▸ hw)
  rw [upd_ne _ _ this]
  exact h a ha

/-! ## The objects of the top frame -/

/-- An object of type `tEV` holds 35 slots. -/
theorem ev_size {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) {p : Ptrs}
    {Γ : Gam} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) (ht : o.ty = tEV) : 280 ≤ o.size := by
  have := (hL.1 o ho).2.2.2.1
  rw [ht] at this
  exact le_trans hF.evSz this

theorem ck_size {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) {p : Ptrs}
    {Γ : Gam} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) (ht : o.ty = tCK) : 104 ≤ o.size := by
  have := (hL.1 o ho).2.2.2.1
  rw [ht] at this
  exact le_trans hF.ckSz this

/-- Objects of different types have different bases. -/
theorem base_ne_of_ty {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o o' : Obj}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) (ht : o.ty ≠ o'.ty) : o.base ≠ o'.base := by
  intro hb
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp ho
  obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp ho'
  by_cases hij : i = j
  · subst hij; exact ht rfl
  · have h1 := (hL.1 _ ho).2.2.1
    have h2 := (hL.1 _ ho').2.2.1
    rcases hL.2 i j hi hj hij with h | h <;> unfold Obj.hi Obj.lo at h <;> rw [hb] at h <;> omega

/-- A cell `b + k` with `b` the base of a `Γ` object of size `> k` lies in that object. -/
theorem fld_keep_mod {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : k < o.size) {m m' : Mem} {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R m m') (hR : ∀ a, R a → ¬ InO o a) :
    fld m' o.base k = fld m o.base k :=
  fld_keep hord hL ho hk fun a ha => hmod a fun hr => hR a hr ha

/-- Two different `Γ` objects share no byte. -/
theorem inO_disj {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o o' : Obj}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) (hb : o.base ≠ o'.base) {a : BitVec 64} (h : InO o a) :
    ¬ InO o' a := by
  intro h'
  unfold InO at h h'
  rcases layout_disj hL ho ho' hb with h1 | h1 <;> omega

/-! ## Safe EV / CK cells -/

theorem safe_ev {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) {p : Ptrs}
    {Γ : Gam} {s : State σ} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) (ht : o.ty = tEV) {j : Nat}
    (hj : j ∈ evDriverSlots) {a : BitVec 64} (ha : a = o.cell j) :
    ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ 0 < k ∧
      ((C.ty o.ty).slot k = .scalar ∨ (C.ty o.ty).slot k = .prot) ∧ a = o.cell k ∧
      ∀ o' ∈ Γ, ¬ H.fp Γ s o' a := by
  have hsz := ev_size hF hL ho ht
  have hj' : 0 < j ∧ j ≤ 24 := by simp [evDriverSlots] at hj; omega
  refine ⟨o, ho, j, by unfold Obj.HasSlot; omega, hj'.1, by rw [ht]; exact hF.evDriver j hj, ha,
    fun o' _ => ?_⟩
  rw [ha]
  exact hF.hookEV Γ s o' o ho ht j (evDriverSlots_sub hj)

/-- **Eon**: the cell `EV_OUTPUT_N` (slot 16) of an EV object, holding a word below `2^32` in `t`,
is a safe cell in the sense of `SafeCellsB`. -/
theorem safe_ev16 {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) {p : Ptrs}
    {Γ : Gam} {s t : State σ} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) (ht : o.ty = tEV)
    {a : BitVec 64} (ha : a = o.cell 16) (hv : (rd t.memory a).toNat < 2 ^ 32) :
    ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ 0 < k ∧
      ((C.ty o.ty).slot k = .scalar ∨ (C.ty o.ty).slot k = .prot ∨
        ((C.ty o.ty).slot k = .bnd ∧ (rd t.memory a).toNat < 2 ^ 32)) ∧ a = o.cell k ∧
      ∀ o' ∈ Γ, ¬ H.fp Γ s o' a := by
  have hsz := ev_size hF hL ho ht
  refine ⟨o, ho, 16, by unfold Obj.HasSlot; omega, by omega,
    Or.inr (Or.inr ⟨by rw [ht]; exact hF.ev16, hv⟩), ha, fun o' _ => ?_⟩
  rw [ha]
  exact hF.hookEV Γ s o' o ho ht 16 (by simp [evDriverSlots16])

theorem safe_ck {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) {p : Ptrs}
    {Γ : Gam} {s : State σ} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) (ht : o.ty = tCK) {j : Nat}
    (hj0 : 0 < j) (hj : j < 13) {a : BitVec 64} (ha : a = o.cell j) :
    ∃ o ∈ Γ, ∃ k, o.HasSlot k ∧ 0 < k ∧
      ((C.ty o.ty).slot k = .scalar ∨ (C.ty o.ty).slot k = .prot) ∧ a = o.cell k ∧
      ∀ o' ∈ Γ, ¬ H.fp Γ s o' a := by
  have hsz := ck_size hF hL ho ht
  refine ⟨o, ho, j, by unfold Obj.HasSlot; omega, hj0, Or.inr (by rw [ht]; exact hF.ckProt j hj),
    ha, fun o' _ => ?_⟩
  rw [ha]
  exact hF.hookCK Γ s o' o ho ht j hj

theorem fld_mod {m m' : Mem} {R : BitVec 64 → Prop} (hmod : ModifiesOnly R m m') {b : BitVec 64}
    {k : Nat} (h : ¬ R (b + BitVec.ofNat 64 k)) : fld m' b k = fld m b k := by
  unfold fld rd; rw [hmod _ h]

theorem ne_mem_nodup {e : BitVec 64} {l : List (BitVec 64)} (h : (e :: l).Nodup) {x : BitVec 64}
    (hx : x ∈ l) : x ≠ e := by
  rintro rfl
  exact (List.nodup_cons.mp h).1 hx

end InitECandidate.Solver.MemSafe.Frames
