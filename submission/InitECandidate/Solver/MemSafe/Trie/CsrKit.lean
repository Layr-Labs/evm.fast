import InitECandidate.Solver.MemSafe.Trie.CallX
import InitECandidate.Solver.MemSafe.Trie.HtabSetRd
import InitECandidate.Solver.MemSafe.Trie.MptFromWitness
import InitECandidate.Solver.MemSafe.Trie.HtabCopy
import InitECandidate.Solver.MemSafe.Trie.EaRet
import InitECandidate.Solver.MemSafe.Rec.AdoptNib
import InitECandidate.Solver.MemSafe.Dn.Wst
import InitECandidate.Solver.Wit.WitG

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: kit

* `LV`: a list of known local values (any value, not only words).
* `glob_load`, `glob_obj`, `obj_slot_fits`: reading a field of a typed record global.
* `dwTPre_of_obj`: `mpt_from_witness`'s precondition from a `tWSR` object of `Γ`.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type}

/-! ## Known locals -/

def LV (kv : List (MlS × ValueHOL 64)) (m : LocalsH) : Prop := ∀ p ∈ kv, m.lookup p.1 = some p.2

theorem lv_set {kv : List (MlS × ValueHOL 64)} {s : State σ} (h : LV kv s.locals) {x : MlS}
    (hx : ∀ p ∈ kv, p.1 ≠ x) (v : ValueHOL 64) : LV kv (setVarHOLFinite x v s).locals :=
  fun p hp => lk_keep (hx p hp) (h p hp)

theorem lv_cons {kv : List (MlS × ValueHOL 64)} {m : LocalsH} {x : MlS} {v : ValueHOL 64}
    (h : LV kv m) (hx : m.lookup x = some v) : LV ((x, v) :: kv) m := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · exact hx
  · exact h p hp

theorem lv_new {kv : List (MlS × ValueHOL 64)} {s : State σ} (h : LV kv s.locals) {x : MlS}
    (hx : ∀ p ∈ kv, p.1 ≠ x) (v : ValueHOL 64) : LV ((x, v) :: kv) (setVarHOLFinite x v s).locals :=
  lv_cons (lv_set h hx v) (by simp [setVarHOLFinite, FUPDATE])

/-- Assigning a known local. -/
theorem lv_assign {kv : List (MlS × ValueHOL 64)} {s : State σ} (h : LV kv s.locals) {x : MlS}
    (v : ValueHOL 64) :
    LV ((x, v) :: kv.filter (fun p => decide (p.1 ≠ x))) (setVarHOLFinite x v s).locals := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · simp [setVarHOLFinite, FUPDATE]
  · obtain ⟨hp, hne⟩ := List.mem_filter.mp hp
    exact lk_keep (by simpa using hne) (h p hp)

theorem lv_ev {kv : List (MlS × ValueHOL 64)} {s : State σ} (h : LV kv s.locals) {x : MlS}
    {v : ValueHOL 64} (hm : (x, v) ∈ kv) : ev s (lv x) = some v := h _ hm

theorem lv_res {kv : List (MlS × ValueHOL 64)} {m : LocalsH} (h : LV kv m) {x : MlS}
    (hx : ∀ p ∈ kv, p.1 ≠ x) (o : Option (ValueHOL 64)) : LV kv (m.resVarEq (x, o)) := by
  intro p hp
  rw [lookup_resVarEq_ne _ _ (Ne.symm (hx p hp))]
  exact h p hp

theorem lv_mono {kv kv' : List (MlS × ValueHOL 64)} {m : LocalsH} (h : LV kv m)
    (hs : ∀ p ∈ kv', p ∈ kv) : LV kv' m := fun p hp => h p (hs p hp)

macro "lv_fresh" : tactic =>
  `(tactic| (intro p hp; simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
             rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
               rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
               rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)))

/-! ## Reading a record global -/

theorem glob_load {s : State σ} (hs : InCtx s guestCtx) {g : MlS} {k : Nat} (hk : k < 2 ^ 20)
    {v : ValueHOL 64}
    (hv : ev s (.load .one (.op .add [.var .global g, cw k])) = some v) :
    ∃ w, gword s g = some w ∧ nullMax ≤ w.toNat ∧
      v = .val (.word (rd s.memory (w + BitVec.ofNat 64 k))) := by
  obtain ⟨a, ha, hd, hva⟩ := Spec.Mpt.Leaves.ev_load1_inv' hv
  obtain ⟨w, c, hw, hc, he⟩ := Spec.Mpt.Leaves.ev_add2_inv' ha
  cases he
  have hg := Wit.ev_gvar hw
  rw [ev_cw] at hc
  cases hc
  refine ⟨w, by unfold gword; rw [hg], ?_, hva⟩
  have hns := MemSafe.nullSafe_guestCtx (w + BitVec.ofNat 64 k) (by rw [← hs.2.1]; exact hd)
  rw [BitVec.toNat_add, BitVec.toNat_ofNat] at hns
  unfold heapBase at hns
  unfold nullMax
  have := w.isLt
  by_contra hlt
  rw [Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)] at hns
  omega

/-- A non-null typed global points at an object of `Γ`. -/
theorem glob_obj {Γ : Gam} {s : State σ} (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    {g : MlS} {t : Nat} (hGT : Types.guestC.GT.lookup g = some (.nptr t)) {w : BitVec 64}
    (hw : gword s g = some w) (hnn : nullMax ≤ w.toNat) :
    ∃ o ∈ Γ, o.base = w ∧ o.ty = t := by
  obtain ⟨w', hw', hf⟩ := hG.choose_spec.2.2.2.2.2.1 _ _ hGT
  rw [hw] at hw'
  cases hw'
  rcases hf with hf | ⟨o, ho, hb, ht⟩
  · omega
  · exact ⟨o, ho, hb, ht⟩

/-- A typed field of an object of `Γ`. -/
theorem obj_slot_fits {Γ : Gam} {s : State σ} (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : (Types.guestC.ty o.ty).slot k ≠ .prot)
    (hsz : 8 * k + 8 ≤ (Types.guestC.ty o.ty).minSz) :
    Fits Γ ((Types.guestC.ty o.ty).slot k) (rd s.memory (o.base + BitVec.ofNat 64 (8 * k))) := by
  obtain ⟨p, hp, hord, hL, hF, -⟩ := hG
  have hsz' := (hL.1 o ho).2.2.2.1
  have := hF o ho k (by unfold Obj.HasSlot; omega)
  have e : o.cell k = o.base + BitVec.ofNat 64 (8 * k) := by rw [Obj.cell]
  rw [e] at this
  exact this

/-- `mpt_from_witness`'s precondition from a `tWSR` object. -/
theorem dwTPre_of_obj {Γ : Gam} {s : State σ} (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    {o : Obj} (ho : o ∈ Γ) (ht : o.ty = Types.tWSR) (rh : ValueHOL 64) :
    DwTPre [.val (.word (rd s.memory o.base)), rh] s Γ := by
  obtain ⟨p, hp, hord, hL, -, -, -, hW⟩ := id hG
  obtain ⟨-, -, -, -, hN, -⟩ := Hooks.wsRW_of_wf ht (hW o ho)
  rw [Wit.txF_cell0] at hN
  exact ⟨⟨_, rh, rfl, p, hp, hord, Wit.ndbW_of_ndbR hL hN⟩, _, rh, rfl, hN⟩

/-- Weakening the locals of a `GP` post. -/
theorem gp_weakL {a : Act σ} {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : GP a L E Rv r t) (hL : ∀ m, L m → L' m) : GP a L' E Rv r t :=
  ⟨fun hr => let ⟨hl, rest⟩ := h.1 hr; ⟨hL _ hl, rest⟩, h.2⟩

theorem gp_weakL' {a : Act σ} {X : Ctx 64} {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {P : State σ → Prop} {c : ProgHOL 64}
    (hL : ∀ m, L m → L' m) (h : HoareG σ X P c (GP a L E Rv)) : HoareG σ X P c (GP a L' E Rv) :=
  hoareG_conseq h (fun _ _ h => h) (fun _ _ _ _ h => gp_weakL h hL)

end InitECandidate.Solver.MemSafe.Trie
