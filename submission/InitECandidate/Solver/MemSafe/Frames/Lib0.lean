import InitECandidate.Solver.MemSafe.Frames.Layout
import InitECandidate.Solver.MemSafe.HoareX
import InitECandidate.Solver.Spec.Inv.BePreserved

/-!
# Frame-driver library (chain-free part)

* Word updates `upd` of a memory, cells of `Γ` objects (`InO`, `cell_ne`, `fld_keep`).
* `G_modify`: `G` under a memory change confined to cells that keep fitting their slot kinds
  (scalar or `prot` writes, or writes outside `Γ`), with hooks re-established where they read a
  changed cell. It generalizes `G_frame_prot`.
* Store / load / global evaluation helpers for `HoareG` proofs over `ev + k`, `cur_cont + k`.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Memory updates -/

/-- The memory `m` with the word `w` at `a`. -/
def upd (m : Mem) (a w : BitVec 64) : Mem := fun x => if x = a then .word w else m x

theorem upd_self (m : Mem) (a w : BitVec 64) : upd m a w a = .word w := by simp [upd]
theorem upd_ne (m : Mem) {a b : BitVec 64} (w : BitVec 64) (h : b ≠ a) : upd m a w b = m b := by
  simp [upd, h]
theorem rd_upd_self (m : Mem) (a w : BitVec 64) : rd (upd m a w) a = w := by
  simp [rd, upd]
theorem rd_upd_ne (m : Mem) {a b : BitVec 64} (w : BitVec 64) (h : b ≠ a) :
    rd (upd m a w) b = rd m b := by
  simp [rd, upd, h]

/-! ## Cells of objects -/

/-- The byte `a` lies in `o`. -/
def InO (o : Obj) (a : BitVec 64) : Prop := o.lo ≤ a.toNat ∧ a.toNat < o.hi

theorem obj_hi {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {o : Obj}
    (ho : o ∈ Γ) : o.hi ≤ scratchEnd := by
  have h1 := (hL.1 o ho).2.2.2.2
  have he : heapEnd ≤ scratchEnd := by decide
  unfold Ptrs.Ordered at hord
  unfold Obj.hi
  unfold Obj.lo at h1
  unfold Region.Live at h1
  split at h1 <;> omega

theorem layout_disj {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o o' : Obj}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) (hb : o.base ≠ o'.base) : o.hi ≤ o'.lo ∨ o'.hi ≤ o.lo := by
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp ho
  obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp ho'
  by_cases hij : i = j
  · subst hij; exact absurd rfl hb
  · exact hL.2 i j hi hj hij

theorem addr_toNat {o : Obj} {k : Nat} (h : o.base.toNat + k < 2 ^ 64) :
    (o.base + BitVec.ofNat 64 k).toNat = o.base.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : k < 2 ^ 64),
    Nat.mod_eq_of_lt h]

theorem cell_addr {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {o : Obj}
    (ho : o ∈ Γ) {k : Nat} (hk : k < o.size) :
    (o.base + BitVec.ofNat 64 k).toNat = o.lo + k := by
  have := obj_hi hord hL ho
  have hs : scratchEnd < 2 ^ 64 := by decide
  unfold Obj.hi at this
  exact addr_toNat (by omega)

theorem inO_cell {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {o : Obj}
    (ho : o ∈ Γ) {k : Nat} (hk : k < o.size) : InO o (o.base + BitVec.ofNat 64 k) := by
  rw [InO, cell_addr hord hL ho hk]
  unfold Obj.hi Obj.lo
  omega

/-- Two cells differ when their objects differ or their offsets differ. -/
theorem cell_ne {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o o' : Obj} (ho : o ∈ Γ) (ho' : o' ∈ Γ) {k k' : Nat} (hk : k < o.size) (hk' : k' < o'.size)
    (h : o.base ≠ o'.base ∨ k ≠ k') :
    o.base + BitVec.ofNat 64 k ≠ o'.base + BitVec.ofNat 64 k' := by
  intro he
  have e := congrArg BitVec.toNat he
  rw [cell_addr hord hL ho hk, cell_addr hord hL ho' hk'] at e
  rcases h with hb | hkk
  · rcases layout_disj hL ho ho' hb with h1 | h1 <;> unfold Obj.hi Obj.lo at * <;> omega
  · by_cases hb : o.base = o'.base
    · unfold Obj.lo at e; rw [hb] at e; omega
    · rcases layout_disj hL ho ho' hb with h1 | h1 <;> unfold Obj.hi Obj.lo at * <;> omega

/-- A word of `o` is unchanged when `o`'s bytes are. -/
theorem fld_keep {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {o : Obj}
    (ho : o ∈ Γ) {k : Nat} (hk : k < o.size) {m m' : Mem} (h : ∀ a, InO o a → m' a = m a) :
    fld m' o.base k = fld m o.base k := by
  unfold fld rd
  rw [h _ (inO_cell hord hL ho hk)]

/-! ## `G` under confined memory changes -/

/-- **`G` under a memory change confined to `R`**: every changed cell of a `Γ` object keeps
fitting its slot kind, no tag cell changes, and every hook reading a changed cell is
re-established. -/
theorem G_modify {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {Γ : Gam} {s t : State σ}
    (hG : G C H Γ s) (hp : ptrsOf t = ptrsOf s)
    (hglob : ∀ g k, C.GT.lookup g = some k → gword t g = gword s g)
    (hpg : ∀ g ∈ C.PG, t.globals.lookup g = s.globals.lookup g)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R s.memory t.memory)
    (hfit : ∀ o ∈ Γ, ∀ k, o.HasSlot k → R (o.cell k) →
      Fits Γ ((C.ty o.ty).slot k) (rd t.memory (o.cell k)))
    (htag : ∀ o ∈ Γ, (C.tags.lookup o.ty).isSome → ¬ R o.base)
    (hwf : ∀ o ∈ Γ, (∃ a, R a ∧ H.fp Γ s o a) → H.wf Γ t o) : G C H Γ t := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  refine ⟨p, hp ▸ hps, hord, hL, ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    by_cases hr : R (o.cell k)
    · exact hfit o ho k hk hr
    · have e : rd t.memory (o.cell k) = rd s.memory (o.cell k) := by rw [rd, rd, hmod _ hr]
      rw [e]
      exact hF o ho k hk
  · intro o ho tag ht
    have hnot := htag o ho (by rw [ht]; rfl)
    have e : rd t.memory o.base = rd s.memory o.base := by rw [rd, rd, hmod _ hnot]
    rw [e]
    exact hT o ho tag ht
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, (hglob g k hk).trans hv, hf⟩
  · intro o ho
    by_cases hx : ∃ a, R a ∧ H.fp Γ s o a
    · exact hwf o ho hx
    · exact (hH.2 Γ s t o (hW o ho) hd hbe
        (fun a ha => hmod _ (fun hr => hx ⟨a, hr, ha⟩)) hpg).1

/-- The trivial extension. -/
theorem ext_refl (Γ : Gam) : Ext Γ Γ := fun o ho => ⟨o, ho, rfl, rfl, Nat.le_refl _⟩

theorem newFresh_refl (Γ : Gam) (p : Ptrs) : NewFresh Γ Γ p p :=
  fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩

theorem mono_refl (p : Ptrs) : p.Mono p := ⟨Nat.le_refl _, Nat.le_refl _, Nat.le_refl _⟩

/-! ## Globals and expressions -/

theorem gword_some {s : State σ} {g : MlS} {w : BitVec 64} (h : gword s g = some w) :
    s.globals.lookup g = some (.val (.word w)) := by
  unfold gword at h
  split at h
  · rename_i w' hw; cases h; exact hw
  · cases h

theorem gword_of {s : State σ} {g : MlS} {w : BitVec 64}
    (h : s.globals.lookup g = some (.val (.word w))) : gword s g = some w := by
  unfold gword; rw [h]

theorem ev_gAddr {s : State σ} {g : String} {G : BitVec 64} (h : gword s (nm g) = some G) (k : Nat) :
    ev s (.op .add [gv (nm g), cw k]) = some (.val (.word (G + BitVec.ofNat 64 k))) :=
  ev_add2 (gword_some h) (ev_cw s k)

theorem ev_gLoad_of {s : State σ} {g : String} {k : Nat} {G : BitVec 64}
    (h : gword s (nm g) = some G) (hd : s.memaddrs (G + BitVec.ofNat 64 k)) :
    ev s (gLoad g k) = some (.val (.word (fld s.memory G k))) := by
  rw [gLoad, ev_load_one_of (ev_gAddr h k) hd, mem_rd s.memory (G + BitVec.ofNat 64 k)]
  rfl

/-- The value of `lds 1 (g + k)` in terms of `fld`. -/
theorem ev_gLoad_eq {s : State σ} {g : String} {k : Nat} {G : BitVec 64} {v : ValueHOL 64}
    (h : gword s (nm g) = some G) (hv : ev s (gLoad g k) = some v) :
    v = .val (.word (fld s.memory G k)) ∧ s.memaddrs (G + BitVec.ofNat 64 k) := by
  obtain ⟨w, hw, hd, rfl⟩ := ev_load_one hv
  rw [ev_gAddr h k] at hw
  cases hw
  exact ⟨by rw [mem_rd s.memory (G + BitVec.ofNat 64 k)]; rfl, hd⟩

/-- `st g + k, e` for a word value: the memory gets one word. -/
theorem hoareG_stG {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {g : String} {k : Nat} {e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ G v, gword s (nm g) = some G → ev s e = some v →
      ∃ x, v = .val (.word x) ∧ (s.memaddrs (G + BitVec.ofNat 64 k) →
        Q none { s with memory := upd s.memory (G + BitVec.ofNat 64 k) x })) :
    HoareG σ X P (.store (.op .add [gv (nm g), cw k]) e) Q := by
  refine hoareG_store fun s hs hp w v mem hw hv hmem => ?_
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hw
  rw [ev_cw] at hz; cases hz
  obtain ⟨x, rfl, hq⟩ := h s hs hp y v (gword_of hy) hv
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  exact hq hd

theorem lv_of {u : State σ} {x : MlS} {w : BitVec 64} {l : Locs} (hl : u.locals = l)
    (h : l.lookup x = some (.val (.word w))) : ev u (lv x) = some (.val (.word w)) := by
  show u.locals.lookup x = _; rw [hl]; exact h

end InitECandidate.Solver.MemSafe.Frames
