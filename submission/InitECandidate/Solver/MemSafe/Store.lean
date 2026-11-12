import InitECandidate.Solver.MemSafe.Sound1

/-!
# Soundness of the store rule (M1)

`ActOK a X`: the activation's standing facts (lawful hooks, tags in `prot` slots, ordered
entry allocator, entry objects of 8-multiple size, 8-aligned memory domain, untyped and
unprotected allocator globals, fitting entry arguments).

`store_post`: a store accepted by `stOK` keeps `IG` (same ghosts): the written cells are
non-`prot` slots of one typed object receiving fitting words, or cells of a live temporary;
`G` survives by `G_write`, the footprint stays within the activation's.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- The allocator globals are untyped and unprotected. -/
def AllocCfg (C : Cfg) : Prop := ∀ g ∈ allocG, C.GT.lookup g = none ∧ g ∉ C.PG

structure ActOK (a : Act σ) (X : Ctx 64) : Prop where
  hH : HooksLawful a.C a.H
  hC : CfgOK a.C
  hord0 : a.p0.Ordered
  hsz0 : ∀ o ∈ a.Γ0, o.size % 8 = 0
  hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0
  hAC : AllocCfg a.C
  hargs0 : ArgsOK a.C a.Γ0 a.p0 a.sg.params a.vs
  hNS : NullSafe X
  hupg : a.C = upg a.Cb a.caps
  hcaps : capsOK a.Cb a.sg a.caps = true
  hreq : ReqOK a.caps a.s0 a.Γ0
  hmin0 : ∀ o ∈ a.Γ0, (a.C.ty o.ty).minSz ≤ o.size

theorem ns_of {a : Act σ} {X : Ctx 64} (ha : ActOK a X) {s : State σ} (hs : InCtx s X) :
    ∀ x, s.memaddrs x → heapBase ≤ x.toNat :=
  fun x h => ha.hNS x (hs.2.1 ▸ h)

theorem words_len {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {ve : AV} {nw : Nat}
    (hw : ve.words = some nw) {v : ValueHOL 64} (h : VOk Γ Θ ve v) :
    (flattenHOL v).length = nw ∧ (nw = 1 → ve.isWord = true → ∃ x, v = .val (.word x) ∧
      AVok Γ Θ ve x) := by
  cases ve with
  | unk => simp [AV.words] at hw
  | wide n =>
      simp only [AV.words, Option.some.injEq] at hw
      subst hw
      exact ⟨flatten_len v _ h, fun _ hw' => by simp [AV.isWord] at hw'⟩
  | _ =>
      simp only [AV.words, Option.some.injEq] at hw
      subst hw
      obtain ⟨x, rfl, hx⟩ := h
      exact ⟨by simp [flattenHOL], fun _ _ => ⟨x, rfl, hx⟩⟩

/-- The value check `fitsAV`. -/
theorem fits_of_fitsAV {kd : FK} {ve : AV} (h : fitsAV kd ve = true) {Γ : Gam}
    {Θ : List (BitVec 64 × Nat)} {x : BitVec 64} (hx : AVok Γ Θ ve x) :
    kd ≠ .prot ∧ Fits Γ kd x := by
  cases kd with
  | scalar => exact ⟨fun h' => FK.noConfusion h', trivial⟩
  | prot => rw [fitsAV_prot_false] at h; exact Bool.noConfusion h
  | ptr t =>
      obtain ⟨o, rfl, rfl⟩ := fitsAV_ptr_inv h
      obtain ⟨ob, hob, ht, rfl⟩ := hx
      exact ⟨fun h' => FK.noConfusion h', ob, hob, by simp, ht⟩
  | nptr t =>
      refine ⟨fun h' => FK.noConfusion h', ?_⟩
      rcases fitsAV_nptr_inv h with ⟨o, rfl, rfl⟩ | rfl
      · obtain ⟨ob, hob, ht, rfl⟩ := hx
        exact Or.inr ⟨ob, hob, by simp, ht⟩
      · exact hx
  | bnd =>
      refine ⟨fun h' => FK.noConfusion h', ?_⟩
      rcases fitsAV_bnd_inv h with ⟨c, rfl, hc⟩ | rfl
      · have hx' : x = c := hx
        subst hx'
        exact bndB_iff.mp hc
      · exact hx
  | uptr ts =>
      refine ⟨fun h' => FK.noConfusion h', ?_⟩
      rcases fitsAV_uptr_inv h with ⟨t', o, rfl, hm, rfl⟩ | ⟨ts', rfl, hall⟩
      · obtain ⟨ob, hob, ht, rfl⟩ := hx
        exact Or.inr ⟨ob, hob, by simp, by rw [ht]; exact hm⟩
      · rcases hx with hn | ⟨ob, hob, hb, ht⟩
        · exact Or.inl hn
        · exact Or.inr ⟨ob, hob, hb, hall _ ht⟩

theorem overlap_lt {C : Cfg} {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ)
    {b n : Nat} (h : BufOK C Γ p b n) {c : BitVec 64} (hc : Overlap b n c) :
    c.toNat < scratchEnd := by
  rcases h c hc with ⟨o, ho, k, hk, -, rfl⟩ | ⟨-, ha⟩
  · obtain ⟨h1, h2⟩ := cell_toNat hord hL ho hk
    unfold Obj.HasSlot at hk
    omega
  · unfold Ptrs.Allocated at ha
    unfold Ptrs.Ordered at hord
    have : heapEnd ≤ scratchEnd := by decide
    omega

theorem toNat_ofNat_lt {x : Nat} (h : x < 2 ^ 64) : (BitVec.ofNat 64 x).toNat = x := by
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt h]

theorem bufOK_bound {C : Cfg} {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ)
    {b n : Nat} (hb : b < 2 ^ 64) (h : BufOK C Γ p b n) (hn : 0 < n) :
    b + n ≤ scratchEnd + 8 := by
  have hse : scratchEnd + 16 < 2 ^ 64 := by decide
  have hm : 8 * (b / 8) < 2 ^ 64 := by omega
  have h1 := overlap_lt hord hL h (c := BitVec.ofNat 64 (8 * (b / 8)))
    ⟨by rw [toNat_ofNat_lt hm]; omega, by rw [toNat_ofNat_lt hm]; omega,
     by rw [toNat_ofNat_lt hm]; omega⟩
  rw [toNat_ofNat_lt hm] at h1
  by_contra hc
  have hm2 : scratchEnd + 8 < 2 ^ 64 := by omega
  have h8 : (scratchEnd + 8) % 8 = 0 := by decide
  have h2 := overlap_lt hord hL h (c := BitVec.ofNat 64 (scratchEnd + 8))
    ⟨by rw [toNat_ofNat_lt hm2]; exact h8, by rw [toNat_ofNat_lt hm2]; omega,
     by rw [toNat_ofNat_lt hm2]; omega⟩
  rw [toNat_ofNat_lt hm2] at h2
  omega

/-- A window token is aligned and of size `0`: it overlaps no cell. -/
theorem win_no_overlap {a : Act σ} {Γ : Gam} {p : Ptrs} {rg : Region} {td : TD}
    {q : BitVec 64} (h : td.size = 0 ∧ WinOK a Γ p rg q) {x : BitVec 64} :
    ¬ Overlap q.toNat td.size x := by
  intro ⟨h1, h2, h3⟩
  have h8 := h.2.1
  rw [h.1] at h3
  omega

theorem fitsAV_not_prot {kd : FK} {ve : AV} (h : fitsAV kd ve = true) : kd ≠ .prot := by
  intro hk; subst hk; rw [fitsAV_prot_false] at h; exact Bool.noConfusion h

theorem fitsAV_scalar {kd : FK} {ve : AV} (h : fitsAV kd ve = true) (hw : ve.isWord = false) :
    kd = .scalar := by
  cases kd with
  | scalar => rfl
  | prot => rw [fitsAV_prot_false] at h; exact Bool.noConfusion h
  | ptr t => obtain ⟨o, rfl, -⟩ := fitsAV_ptr_inv h; exact Bool.noConfusion hw
  | nptr t =>
      rcases fitsAV_nptr_inv h with ⟨o, rfl, -⟩ | rfl <;> exact Bool.noConfusion hw
  | uptr ts =>
      rcases fitsAV_uptr_inv h with ⟨t', o, rfl, -⟩ | ⟨ts', rfl, -⟩ <;> exact Bool.noConfusion hw
  | bnd =>
      rcases fitsAV_bnd_inv h with ⟨c, rfl, -⟩ | rfl <;> exact Bool.noConfusion hw

theorem slotsOK_scalar {d : TyD} {k n : Nat} {ve : AV} (h : slotsOK d k n ve = true)
    (hn : n ≠ 1) {i : Nat} (hi : i < n) : d.slot (k + i) = .scalar := by
  unfold slotsOK at h
  split at h
  · exact absurd rfl hn
  · simp only [List.all_eq_true, List.mem_range, beq_iff_eq] at h
    exact h i hi

end InitECandidate.Solver.MemSafe
