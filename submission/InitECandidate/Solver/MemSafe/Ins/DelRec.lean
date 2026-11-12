import InitECandidate.Solver.MemSafe.Ins.DelCollFn

set_option autoImplicit false

/-!
# The delete descent records, typed

`_mpt_delete_node_body` allocates one 40-byte record per extension / branch passed, in the scratch
arena (`scratch_alloc(40)`), linked through `+0` (`DL_PREV`), with the node at `+8`, the kind
(`2` extension, `3` branch) at `+16`, the key segment at `+24` and its length at `+32` (extension),
or the child index at `+32` (branch).

`DlG a Γ q M lo hi r`: the chain from `r` (increasing addresses, in `[lo, hi)`): every record is a
fresh 40-byte block outside `Γ` (`FrD`), and holds either an `NEXT` object of `Γ` with a `` segment,
or an `NBRANCH` object of `Γ` with an index `< 16` (`DlRec`). Mirrors `Dn.FrG` (88-byte records).

* `dl_mem`: the chain reads only cells in `[lo, hi)`; `dl_ext`: it survives a call's extension of `Γ`;
* `dl_call0` / `dl_call`: the chain across a call; `dl_mono_lo`: lowering `lo`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

/-- A record block: aligned, outside `Γ`, fresh since the entry, allocated now. -/
def FrD (a : Act σ) (R : BitVec 64) (Γ : Gam) (q : Ptrs) : Prop :=
  R.toNat % 8 = 0 ∧ R.toNat + 40 < 2 ^ 64 ∧ ∀ y : BitVec 64, Overlap R.toNat 40 y →
    ¬ InObj Γ y.toNat ∧ ¬ a.p0.Allocated y.toNat ∧ q.Allocated y.toNat

/-- The contents of the record at `r`. -/
def DlRec (Γ : Gam) (M : Mem) (r : BitVec 64) : Prop :=
  (rd M (r + 16) = 2 ∧ (∃ o ∈ Γ, o.base = rd M (r + 8) ∧ o.ty = Types.tNEXT) ∧
      NIn Γ (rd M (r + 24)) (rd M (r + 32))) ∨
  (rd M (r + 16) = 3 ∧ (∃ o ∈ Γ, o.base = rd M (r + 8) ∧ o.ty = Types.tNBRANCH) ∧
      (rd M (r + 32)).toNat < 16)

def DlG (a : Act σ) (Γ : Gam) (q : Ptrs) (M : Mem) (lo hi : Nat) (r : BitVec 64) : Prop :=
  r = 0 ∨ if h : lo ≤ r.toNat ∧ r.toNat + 40 ≤ hi then
    FrD a r Γ q ∧ DlRec Γ M r ∧ DlG a Γ q M (r.toNat + 40) hi (rd M r) else False
termination_by hi - lo
decreasing_by omega

theorem dl_zero (a : Act σ) (Γ : Gam) (q : Ptrs) (M : Mem) (lo hi : Nat) :
    DlG a Γ q M lo hi 0 := by
  rw [DlG]; exact Or.inl rfl

theorem dl_unfold {a : Act σ} {Γ : Gam} {q : Ptrs} {M : Mem} {lo hi : Nat} {r : BitVec 64}
    (h : DlG a Γ q M lo hi r) (hr : r ≠ 0) : lo ≤ r.toNat ∧ r.toNat + 40 ≤ hi ∧ FrD a r Γ q ∧
      DlRec Γ M r ∧ DlG a Γ q M (r.toNat + 40) hi (rd M r) := by
  rw [DlG] at h
  rcases h with h | h
  · exact absurd h hr
  · split at h
    · rename_i hh; exact ⟨hh.1, hh.2, h⟩
    · exact h.elim

theorem dl_cons {a : Act σ} {Γ : Gam} {q : Ptrs} {M : Mem} {lo hi : Nat} {r : BitVec 64}
    (h1 : lo ≤ r.toNat) (h2 : r.toNat + 40 ≤ hi) (h3 : FrD a r Γ q) (h4 : DlRec Γ M r)
    (h5 : DlG a Γ q M (r.toNat + 40) hi (rd M r)) : DlG a Γ q M lo hi r := by
  rw [DlG]
  right
  rw [dif_pos ⟨h1, h2⟩]
  exact ⟨h3, h4, h5⟩

theorem dl_mono_lo {a : Act σ} {Γ : Gam} {q : Ptrs} {M : Mem} {lo lo' hi : Nat}
    {r : BitVec 64} (hl : lo' ≤ lo) (h : DlG a Γ q M lo hi r) : DlG a Γ q M lo' hi r := by
  by_cases hr : r = 0
  · subst hr; exact dl_zero _ _ _ _ _ _
  · obtain ⟨h1, h2, h3, h4, h5⟩ := dl_unfold h hr
    exact dl_cons (by omega) h2 h3 h4 h5

theorem dlRec_mem {Γ : Gam} {M M' : Mem} {r : BitVec 64} (hr : r.toNat + 40 < 2 ^ 64)
    (hM : ∀ x : BitVec 64, r.toNat ≤ x.toNat → x.toNat < r.toNat + 40 → M' x = M x)
    (h : DlRec Γ M r) : DlRec Γ M' r := by
  have e8 : (r + 8).toNat = r.toNat + 8 := Spec.Mpt.Dec.toNat_add_lt (k := 8) (by omega)
  have e16 : (r + 16).toNat = r.toNat + 16 := Spec.Mpt.Dec.toNat_add_lt (k := 16) (by omega)
  have e24 : (r + 24).toNat = r.toNat + 24 := Spec.Mpt.Dec.toNat_add_lt (k := 24) (by omega)
  have e32 : (r + 32).toNat = r.toNat + 32 := Spec.Mpt.Dec.toNat_add_lt (k := 32) (by omega)
  have m8 : rd M' (r + 8) = rd M (r + 8) :=
    rd_eq_of_mem (hM _ (by rw [e8]; omega) (by rw [e8]; omega))
  have m16 : rd M' (r + 16) = rd M (r + 16) :=
    rd_eq_of_mem (hM _ (by rw [e16]; omega) (by rw [e16]; omega))
  have m24 : rd M' (r + 24) = rd M (r + 24) :=
    rd_eq_of_mem (hM _ (by rw [e24]; omega) (by rw [e24]; omega))
  have m32 : rd M' (r + 32) = rd M (r + 32) :=
    rd_eq_of_mem (hM _ (by rw [e32]; omega) (by rw [e32]; omega))
  rcases h with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
  · exact Or.inl ⟨by rw [m16]; exact h1, by rw [m8]; exact h2, by rw [m24, m32]; exact h3⟩
  · exact Or.inr ⟨by rw [m16]; exact h1, by rw [m8]; exact h2, by rw [m32]; exact h3⟩

/-- The chain reads only cells in `[lo0, hi)`, for any `lo0 ≤ lo`. -/
theorem dl_mem {a : Act σ} {Γ : Gam} {q : Ptrs} {M M' : Mem} {lo0 hi : Nat}
    (hhi : hi < 2 ^ 64) (hM : ∀ x : BitVec 64, lo0 ≤ x.toNat → x.toNat < hi → M' x = M x) :
    ∀ n lo (r : BitVec 64), lo0 ≤ lo → hi - lo = n → DlG a Γ q M lo hi r →
      DlG a Γ q M' lo hi r := by
  intro n
  induction n using Nat.strongRecOn with
  | _ n ih =>
  intro lo r hl0 hn h
  by_cases hr : r = 0
  · subst hr; exact dl_zero _ _ _ _ _ _
  obtain ⟨h1, h2, h3, h4, h5⟩ := dl_unfold h hr
  have m0 : rd M' r = rd M r := rd_eq_of_mem (hM r (by omega) (by omega))
  refine dl_cons h1 h2 h3 (dlRec_mem (r := r) (by have := h3.2.1; omega)
    (fun x hx1 hx2 => hM x (by omega) (by omega)) h4) ?_
  rw [m0]
  exact ih (hi - (r.toNat + 40)) (by omega) _ _ (by omega) rfl h5

theorem dlRec_ext {Γ Γ' : Gam} {M : Mem} {r : BitVec 64} (he : Ext Γ Γ')
    (h : DlRec Γ M r) : DlRec Γ' M r := by
  rcases h with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
  · exact Or.inl ⟨h1, by obtain ⟨o, ho, hb, ht⟩ := h2; exact obT_ext he ⟨o, ho, hb, ht⟩ |>.imp fun o' h => h, nIn_ext he h3⟩
  · exact Or.inr ⟨h1, by obtain ⟨o, ho, hb, ht⟩ := h2; exact obT_ext he ⟨o, ho, hb, ht⟩ |>.imp fun o' h => h, h3⟩

/-- The chain survives a call: `Γ` extended by fresh objects, the pointers moved monotonically. -/
theorem dl_ext {a : Act σ} {Γ Γ' : Gam} {q q' : Ptrs} {M : Mem} {hi : Nat}
    (he : Ext Γ Γ') (hnf : NewFresh Γ Γ' q q') (hmo : q.Mono q') (hord : q.Ordered)
    (hord' : q'.Ordered) :
    ∀ n lo (r : BitVec 64), hi - lo = n → DlG a Γ q M lo hi r → DlG a Γ' q' M lo hi r := by
  intro n
  induction n using Nat.strongRecOn with
  | _ n ih =>
  intro lo r hn h
  by_cases hr : r = 0
  · subst hr; exact dl_zero _ _ _ _ _ _
  obtain ⟨h1, h2, ⟨f8, f88, fc⟩, h4, h5⟩ := dl_unfold h hr
  refine dl_cons h1 h2 ⟨f8, f88, fun y hy => ?_⟩ (dlRec_ext he h4)
    (ih (hi - (r.toNat + 40)) (by omega) _ _ rfl h5)
  obtain ⟨hn0, hp0, hal⟩ := fc y hy
  refine ⟨fun ⟨o, ho, l, u⟩ => ?_, hp0, Spec.Mpt.Dec.allocated_mono hmo hal⟩
  rcases hnf o ho y l u with ⟨o0, ho0, -, -, l0, u0⟩ | hf
  · exact hn0 ⟨o0, ho0, l0, u0⟩
  · unfold Fresh at hf
    unfold Ptrs.Allocated at hal
    obtain ⟨m1, m2, m3⟩ := hmo
    obtain ⟨o1, o2, o3, o4, o5, -⟩ := hord
    obtain ⟨o1', o2', o3', o4', o5', -⟩ := hord'
    omega

end InitECandidate.Solver.MemSafe.Ins
