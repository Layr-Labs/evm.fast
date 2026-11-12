import InitECandidate.Solver.MemSafe.HtabEntries.LstPushCode
import InitECandidate.Solver.Spec.Inv.Memcpy

/-!
# `lst_push` under the list hook

For a list header `L ∈ Γ` of type `t ∈ lstTys` and `esz = lstE t` (the hook gives `N ≤ CAP`,
`0 < CAP` and an array of `≥ lstE t · CAP` bytes at `PTR`):

* when `N = CAP` the body allocates `2 · esz · CAP` heap bytes (no wrap: the old array lies in
  `Γ`), copies the `esz · N` live bytes into the fresh block, adds it to `Γ` as a heap list array
  (`tLSTAh`), and sets `PTR`, `CAP := 2 CAP`;
* it raises `N` and returns `PTR + N₀ · esz`, the first byte of a slot inside the array
  (`LpR`: `E · (N₀ + 1) ≤` the array's size).

Only the three header cells of `L` are written (`LCell`), each store keeps the list invariant
(`trk_lstore`).

* **`sumSpec_lst_push`**: the precise `SumSpecA` (Pre: `vs = [L.base, lstE L.ty]` for a list
  header `L ∈ Γ`; PW: the header cells; Q: `LpR`), generic in a hook family with `LstHooks`.
* **`csumm_lst_push t`**: the fold entry for `t ∈ lstTys`, signature
  `lpSig t = ⟨[fits (ptr t), eq (lstE t)], [], [], true⟩`, caps `lpCaps t = [⟨anyG, t, [], true⟩]`;
  `lstPushTab`, `lstPushTab_sound`.
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.HtabEntries
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

theorem lp_ev_lv {u : State σ} {x : MlS} {w : BitVec 64} (h : u.locals.lookup x = some (.val (.word w))) :
    ev u (lv x) = some (.val (.word w)) := Mpt.Leaves.ev_lv' h

theorem lp_ev_ld {u : State σ} {a : ExpHOL 64} {w : BitVec 64} {v : ValueHOL 64}
    (ha : ev u a = some (.val (.word w))) (h : ev u (.load .one a) = some v) :
    v = .val (.word (rd u.memory w)) := by
  obtain ⟨w', hw', -, rfl⟩ := ev_load_one h
  rw [ha] at hw'
  cases hw'
  rw [Spec.Inv.mem_word u.memory w]
  rfl

theorem rd_iupd_self (m : Mem) (a x : BitVec 64) : rd (Spec.Inv.upd m a x) a = x := by
  unfold rd Spec.Inv.upd; simp

theorem rd_iupd_ne {m : Mem} {a b x : BitVec 64} (h : b ≠ a) :
    rd (Spec.Inv.upd m a x) b = rd m b := by
  unfold rd Spec.Inv.upd; simp [h]

theorem lP_upd {m : Mem} {L : Obj} {a x : BitVec 64} (h : L.cell 0 ≠ a) :
    lP (Spec.Inv.upd m a x) L = lP m L := rd_iupd_ne h
theorem lN_upd {m : Mem} {L : Obj} {a x : BitVec 64} (h : L.cell 1 ≠ a) :
    lN (Spec.Inv.upd m a x) L = lN m L := rd_iupd_ne h
theorem lC_upd {m : Mem} {L : Obj} {a x : BitVec 64} (h : L.cell 2 ≠ a) :
    lC (Spec.Inv.upd m a x) L = lC m L := rd_iupd_ne h
theorem lP_upd_self (m : Mem) (L : Obj) (x : BitVec 64) : lP (Spec.Inv.upd m (L.cell 0) x) L = x :=
  rd_iupd_self _ _ _
theorem lN_upd_self (m : Mem) (L : Obj) (x : BitVec 64) : lN (Spec.Inv.upd m (L.cell 1) x) L = x :=
  rd_iupd_self _ _ _
theorem lC_upd_self (m : Mem) (L : Obj) (x : BitVec 64) : lC (Spec.Inv.upd m (L.cell 2) x) L = x :=
  rd_iupd_self _ _ _

/-! ## Word arithmetic -/

theorem notLower_true {x y : BitVec 64} (h : wordCmpHOL .notLower x y = true) : y.toNat ≤ x.toNat := by
  simp only [wordCmpHOL, Bool.not_eq_true', decide_eq_false_iff_not, BitVec.lt_def] at h
  omega

theorem notLower_false {x y : BitVec 64} (h : wordCmpHOL .notLower x y = false) : x.toNat < y.toNat := by
  simp only [wordCmpHOL, Bool.not_eq_false', decide_eq_true_eq, BitVec.lt_def] at h
  exact h

theorem toNat_ofNat_small {n : Nat} (h : n < 2 ^ 64) : (BitVec.ofNat 64 n).toNat = n := by
  rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt h

theorem toNat_mul_small {x y : BitVec 64} (h : x.toNat * y.toNat < 2 ^ 64) :
    (x * y).toNat = x.toNat * y.toNat := by
  rw [BitVec.toNat_mul]; exact Nat.mod_eq_of_lt h

theorem toNat_add1 {x : BitVec 64} (h : x.toNat + 1 < 2 ^ 64) :
    (x + BitVec.ofNat 64 1).toNat = x.toNat + 1 := by
  rw [BitVec.toNat_add, toNat_ofNat_small (by decide)]; exact Nat.mod_eq_of_lt h

theorem hse32 : scratchEnd < 2 ^ 32 := by decide

/-! ## Signatures -/

/-- The fold signature of `lst_push` for the list type `t`. -/
def lpSig (t : Nat) : Sig := ⟨[.fits (.ptr t), .eq (lstE t)], [], [], true⟩

/-- Its capability: every cell of the list headers of type `t`. -/
def lpCaps (t : Nat) : List Cap := [⟨anyG, t, [], true⟩]

/-- The signature of the precise spec. -/
def lpSigA : Sig := ⟨[.any, .any], [], [], true⟩

section body
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {L0 : Obj}

/-- What a return of `lst_push` on the header `L0` built (`N0` the entry `N`): the result is
`PTR + N0 · esz` of the final header, `N = N0 + 1`, and `PTR` names an array with room for
`N0 + 1` elements. -/
def LpR (L0 : Obj) (N0 : BitVec 64) (v : ValueHOL 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∃ L ∈ Γ', L.base = L0.base ∧ L.ty = L0.ty ∧
    v = .val (.word (lP t.memory L + N0 * BitVec.ofNat 64 (lstE L0.ty))) ∧
    (lN t.memory L).toNat = N0.toNat + 1 ∧ LArr Γ' L (lP t.memory L) (lstE L0.ty * (N0.toNat + 1))

/-- **The value part of a push** (package L), for the final header `L` of the list `L0`: either
the array is the same (`PTR` unchanged), or it is a fresh heap array (`tLSTAh`) whose first
`E · N0` bytes are the old ones, and whose bytes lie outside everything allocated at entry. -/
def LpVl (Γ0 : Gam) (s0 : State σ) (m : Mem) (L0 L : Obj) : Prop :=
  rd m (L.cell 0) = rd s0.memory (L0.cell 0) ∧ ∃ z ∈ Γ0, z.base = rd s0.memory (L0.cell 0) ∧
      IsLstA z.ty ∧ lstE L0.ty * ((lN s0.memory L0).toNat + 1) ≤ z.size

def LpVr (s0 : State σ) (m : Mem) (p0 : Ptrs) (Γ' : Gam) (L0 L : Obj) : Prop :=
  (∀ k, 8 * k < lstE L0.ty * (lN s0.memory L0).toNat →
      rd m (rd m (L.cell 0) + BitVec.ofNat 64 (8 * k)) =
        rd s0.memory (rd s0.memory (L0.cell 0) + BitVec.ofNat 64 (8 * k))) ∧
    0 < (lN s0.memory L0).toNat ∧
    ((rd m (L.cell 0)).toNat + 2 * (lstE L0.ty * (lN s0.memory L0).toNat) < 2 ^ 64 ∧
      ∀ a : Nat, (rd m (L.cell 0)).toNat ≤ a →
        a < (rd m (L.cell 0)).toNat + 2 * (lstE L0.ty * (lN s0.memory L0).toNat) →
        ¬ p0.Allocated a) ∧
    ∃ y ∈ Γ', y.base = rd m (L.cell 0) ∧ y.ty = tLSTAh

def LpV (Γ0 : Gam) (s0 : State σ) (m : Mem) (p0 : Ptrs) (Γ' : Gam) (L0 L : Obj) : Prop :=
  LpVl Γ0 s0 m L0 L ∨ LpVr s0 m p0 Γ' L0 L

/-- `LpV` for the final header (some object of `Γ'` of the base and type of `L0`). -/
def LpVx (Γ0 : Gam) (s0 : State σ) (m : Mem) (p0 : Ptrs) (Γ' : Gam) (L0 : Obj) : Prop :=
  ∃ L ∈ Γ', L.base = L0.base ∧ L.ty = L0.ty ∧ LpV Γ0 s0 m p0 Γ' L0 L

/-- The post of the body (returns only). -/
def LpQ (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (L0 : Obj)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (LCell L0) Γ' t ∧
    LpR L0 (lN s0.memory L0) v t Γ' ∧ LpVx Γ0 s0 t.memory p0 Γ' L0

theorem lpQ_locals (hH : HooksLawful guestC H) (r : Option (PanSemResultExact 64)) (t : State σ)
    (L : HolFiniteMapExact MlS (ValueHOL 64)) (h : LpQ H Γ0 s0 p0 L0 r t) :
    LpQ H Γ0 s0 p0 L0 r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', hT, hR, hV⟩ := h v hv
  exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hR, hV⟩

theorem lpV_storeL {Γ0 : Gam} {s0 : State σ} {m : Mem} {L0 L : Obj} {a x : BitVec 64}
    (h : LpVl Γ0 s0 m L0 L) (ha0 : L.cell 0 ≠ a) : LpVl Γ0 s0 (Spec.Inv.upd m a x) L0 L := by
  obtain ⟨h1, h2⟩ := h
  exact ⟨by rw [rd_iupd_ne ha0]; exact h1, h2⟩

/-- A store to a cell other than `PTR` and the copied cells keeps the copy facts. -/
theorem lpV_storeR {s0 : State σ} {m : Mem} {p0 : Ptrs} {Γ' : Gam} {L0 L : Obj}
    {a x : BitVec 64} (h : LpVr s0 m p0 Γ' L0 L) (ha0 : L.cell 0 ≠ a)
    (hne : ∀ k, 8 * k < lstE L0.ty * (lN s0.memory L0).toNat →
      rd m (L.cell 0) + BitVec.ofNat 64 (8 * k) ≠ a) :
    LpVr s0 (Spec.Inv.upd m a x) p0 Γ' L0 L := by
  obtain ⟨hcp, hpos, hb, hy⟩ := h
  unfold LpVr
  rw [rd_iupd_ne ha0]
  refine ⟨fun k hk => ?_, hpos, hb, hy⟩
  rw [rd_iupd_ne (hne k hk)]
  exact hcp k hk

/-- A store to an allocated cell other than `PTR` keeps `LpV`. -/
theorem lpV_store {Γ0 : Gam} {s0 : State σ} {m : Mem} {p0 : Ptrs} {Γ' : Gam} {L0 L : Obj}
    {a x : BitVec 64}
    (h : LpV Γ0 s0 m p0 Γ' L0 L) (ha0 : L.cell 0 ≠ a) (hal : p0.Allocated a.toNat) :
    LpV Γ0 s0 (Spec.Inv.upd m a x) p0 Γ' L0 L := by
  rcases h with h | h
  · exact Or.inl (lpV_storeL h ha0)
  · refine Or.inr (lpV_storeR h ha0 fun k hk => ?_)
    obtain ⟨hcp, hpos, ⟨hlt, hun⟩, hy⟩ := h
    have hb : (rd m (L.cell 0) + BitVec.ofNat 64 (8 * k)).toNat = (rd m (L.cell 0)).toNat + 8 * k :=
      Spec.Inv.add_ofNat_toNat (by omega)
    intro he
    refine hun (rd m (L.cell 0) + BitVec.ofNat 64 (8 * k)).toNat (by omega) (by omega) ?_
    rw [he]; exact hal

/-- The state after the `if`: `N = N0 < CAP` for the header. -/
def LpI (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (L0 : Obj) (u : State σ) : Prop :=
  u.locals.lookup (nm "l") = some (.val (.word L0.base)) ∧
  u.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE L0.ty)))) ∧
  u.locals.lookup (nm "n") = some (.val (.word (lN s0.memory L0))) ∧
  ∃ Γ, Struct.Trk guestC H Γ0 s0 p0 (LCell L0) Γ u ∧ ∃ L ∈ Γ, L.base = L0.base ∧ L.ty = L0.ty ∧
    lN u.memory L = lN s0.memory L0 ∧ (lN s0.memory L0).toNat < (lC u.memory L).toNat ∧
    LpV Γ0 s0 u.memory p0 Γ L0 L

theorem lpI_locals (hH : HooksLawful guestC H) {u : State σ} (h : LpI H Γ0 s0 p0 L0 u)
    {L : HolFiniteMapExact MlS (ValueHOL 64)}
    (hl : ∀ x ∈ [nm "l", nm "esz", nm "n"], L.lookup x = u.locals.lookup x) :
    LpI H Γ0 s0 p0 L0 { u with locals := L } := by
  obtain ⟨h1, h2, h3, Γ, hT, hL⟩ := h
  refine ⟨(hl _ (by simp)).trans h1, (hl _ (by simp)).trans h2, (hl _ (by simp)).trans h3, Γ,
    Struct.trk_congr hH hT rfl rfl rfl rfl, hL⟩

theorem G_wf {C : Cfg} {Γ : Gam} {s : State σ} (hG : G C H Γ s) {o : Obj} (ho : o ∈ Γ) : H.wf Γ s o := by
  obtain ⟨_, _, _, _, _, _, _, hW⟩ := hG
  exact hW o ho

/-- The list hook, unpacked. -/
theorem lst_hook (hLH : LstHooks H) {Γ : Gam} {u : State σ} (hG : G guestC H Γ u) {L : Obj}
    (hL : L ∈ Γ) (hLt : L.ty ∈ lstTys) : LstOK Γ u.memory L :=
  (hLH.get Γ u L hLt (G_wf hG hL)).2.2

/-- Element size times capacity stays below `scratchEnd` (the array lies in `Γ`). -/
theorem lst_ecap (hLH : LstHooks H) {Γ : Gam} {u : State σ} (hG : G guestC H Γ u) {L : Obj}
    (hL : L ∈ Γ) (hLt : L.ty ∈ lstTys) : lstE L.ty * (lC u.memory L).toNat ≤ scratchEnd := by
  obtain ⟨-, -, -, x, hx, -, -, hxs⟩ := lst_hook hLH hG hL hLt
  obtain ⟨q, -, hord, hLay, -⟩ := hG
  have := (Struct.obj_bounds hord hLay hx).2.1
  unfold Obj.hi at this
  omega

/-! ## The tail: `st l + 8, n + 1; return PTR + n * esz` -/

theorem lp_tail (hH : HooksLawful guestC H) (hLH : LstHooks H) (hLt : L0.ty ∈ lstTys)
    (hAl : p0.Allocated (L0.cell 1).toNat) :
    Hoare σ X (LpI H Γ0 s0 p0 L0) lpTail (LpQ H Γ0 s0 p0 L0) := by
  have hE := lstE_pos _ hLt
  unfold lpTail
  refine hoare_seq (R := fun r u => r = none ∧
      u.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE L0.ty)))) ∧
      u.locals.lookup (nm "n") = some (.val (.word (lN s0.memory L0))) ∧
      u.locals.lookup (nm "l") = some (.val (.word L0.base)) ∧
      ∃ Γ, Struct.Trk guestC H Γ0 s0 p0 (LCell L0) Γ u ∧ ∃ L ∈ Γ, L.base = L0.base ∧ L.ty = L0.ty ∧
        (lN u.memory L).toNat = (lN s0.memory L0).toNat + 1 ∧ LpV Γ0 s0 u.memory p0 Γ L0 L) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => L0.base + BitVec.ofNat 64 8)
      (fun _ => lN s0.memory L0 + BitVec.ofNat 64 1) ?_ ?_ ?_
    · rintro u _ ⟨hl, -, -, -⟩ w hw
      rw [ev_add2 (lp_ev_lv hl) (ev_cw _ 8)] at hw
      cases hw; rfl
    · rintro u _ ⟨-, -, hn, -⟩ v hv
      rw [ev_add2 (lp_ev_lv hn) (ev_cw _ 1)] at hv
      cases hv; rfl
    · intro u _ ⟨hl, he, hn, Γ, hT, L, hL, hLb, hLty, hN, hlt, hV⟩
      have hLt' : L.ty ∈ lstTys := hLty ▸ hLt
      have hok := lst_hook hLH (Struct.trk_G hT) hL hLt'
      have hcap := lst_ecap hLH (Struct.trk_G hT) hL hLt'
      rw [hLty] at hcap
      have ha : L0.base + BitVec.ofNat 64 8 = L.cell 1 := by rw [← hLb]; rfl
      have hne01 := lcell_ne (o := L) hok.1 (i := 0) (j := 1) (by omega) (by omega) (by omega)
      have hne21 := lcell_ne (o := L) hok.1 (i := 2) (j := 1) (by omega) (by omega) (by omega)
      have h1 : (lN s0.memory L0 + BitVec.ofNat 64 1).toNat = (lN s0.memory L0).toNat + 1 :=
        toNat_add1 (by have := hse32; omega)
      have hok' : LstOK Γ (Spec.Inv.upd u.memory (L0.base + BitVec.ofNat 64 8)
          (lN s0.memory L0 + BitVec.ofNat 64 1)) L := by
        obtain ⟨hlo, -, hc0, harr⟩ := hok
        rw [ha]
        refine ⟨hlo, ?_, ?_, ?_⟩
        · rw [lN_upd_self, lC_upd hne21, h1]; omega
        · rw [lC_upd hne21]; exact hc0
        · rw [lP_upd hne01, lC_upd hne21]; exact harr
      refine ⟨rfl, he, hn, hl, Γ, trk_lstore hH hLH hT hL hLt' (k := 1) (by omega) ha
        (by rw [show L0.base + BitVec.ofNat 64 8 = L0.cell 1 from rfl]; exact Or.inr (Or.inl rfl))
        _ hok', L, hL, hLb, hLty, ?_, ?_⟩
      · show (lN (Spec.Inv.upd u.memory (L0.base + BitVec.ofNat 64 8)
          (lN s0.memory L0 + BitVec.ofNat 64 1)) L).toNat = (lN s0.memory L0).toNat + 1
        rw [ha, lN_upd_self, h1]
      · show LpV Γ0 s0 (Spec.Inv.upd u.memory (L0.base + BitVec.ofNat 64 8) _) p0 Γ L0 L
        rw [ha]
        refine lpV_store hV hne01 ?_
        have : L.cell 1 = L0.cell 1 := by unfold Obj.cell; rw [hLb]
        rw [this]; exact hAl
  · refine hoare_return fun u _ ⟨_, he, hn, hl, Γ, hT, L, hL, hLb, hLty, hN, hV⟩ v hv w hw => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    obtain ⟨x, y, hx, hy, rfl⟩ := Mpt.Leaves.ev_add2_inv' hv
    have hx' := lp_ev_ld (ev_add2 (lp_ev_lv hl) (ev_cw _ 0)) hx
    cases hx'
    rw [ev_mul2 (lp_ev_lv hn) (lp_ev_lv he)] at hy
    cases hy
    have hLt' : L.ty ∈ lstTys := hLty ▸ hLt
    have hTe := Struct.trk_congr (t' := emptyLocalsHOLFinite u) hH hT rfl rfl rfl rfl
    obtain ⟨-, hnc, -, harr⟩ := lst_hook hLH (Struct.trk_G hT) hL hLt'
    refine ⟨Γ, hTe, ⟨L, hL, hLb, hLty, ?_, hN, ?_⟩, L, hL, hLb, hLty, hV⟩
    · show ValueHOL.val (.word (rd u.memory (L0.base + BitVec.ofNat 64 0) + _)) = _
      rw [← hLb]; rfl
    · obtain ⟨z, hz, hzb, hzt, hzs⟩ := harr
      refine ⟨z, hz, hzb, hzt, le_trans ?_ hzs⟩
      rw [hLty]
      exact Nat.mul_le_mul_left _ (by rw [← hN]; exact hnc)

/-! ## The growth branch -/

theorem lp_grow (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys)
    {u : State σ} (hT : Struct.Trk guestC H Γ0 s0 p0 (LCell L0) Γ0 u) (hmu : u.memory = s0.memory)
    (hpu : ptrsOf u = some p0)
    (hl : u.locals.lookup (nm "l") = some (.val (.word L0.base)))
    (he : u.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE L0.ty)))))
    (hn : u.locals.lookup (nm "n") = some (.val (.word (lN s0.memory L0))))
    (hc : u.locals.lookup (nm "cap") = some (.val (.word (lC s0.memory L0))))
    (hNC : lN s0.memory L0 = lC s0.memory L0) :
    Hoare σ X (fun t => t = u) lpGrow (fun r t => r = none ∧ LpI H Γ0 s0 p0 L0 t) := by
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  obtain ⟨q0, hq0, hord0, hLay0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  obtain ⟨hlo0, hnc0, hc00, harr0⟩ := lst_hook hLH hG0 hL0 hLt
  have hcap0 := lst_ecap hLH hG0 hL0 hLt
  obtain ⟨hE0, hE8, hE64⟩ := lstE_pos _ hLt
  have hse := hse32
  set E := lstE L0.ty with hEdef
  set N0 := lN s0.memory L0 with hN0
  set C0 := lC s0.memory L0 with hC0
  have hEn : (BitVec.ofNat 64 E).toNat = E := toNat_ofNat_small (by omega)
  have hEC : (BitVec.ofNat 64 E * C0).toNat = E * C0.toNat := by
    rw [toNat_mul_small (by rw [hEn]; omega), hEn]
  have hZ : (BitVec.ofNat 64 E * C0 * BitVec.ofNat 64 2).toNat = E * C0.toNat * 2 := by
    rw [toNat_mul_small (by rw [hEC, toNat_ofNat_small (by decide)]; omega), hEC,
      toNat_ofNat_small (by decide)]
  have hEN : (BitVec.ofNat 64 E * N0).toNat = E * C0.toNat := by rw [hNC]; exact hEC
  have hCle : C0.toNat ≤ E * C0.toNat := Nat.le_mul_of_pos_left _ hE0
  have hENr : lstE L0.ty * (lN s0.memory L0).toNat = E * C0.toNat := by
    show E * N0.toNat = E * C0.toNat
    rw [hNC]
  have hNN : (lN s0.memory L0).toNat = C0.toNat := by
    show N0.toNat = C0.toNat
    rw [hNC]
  unfold lpGrow
  refine hoare_decCallS (FunSpec.and (allocSpec_alloc hF.hX) (Frames.funSpec_dom _))
    fun w _ hw vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _ => ?_
  subst w
  rw [evs_cons (ev_mul2 (ev_mul2 (lp_ev_lv he) (lp_ev_lv hc)) (ev_cw _ 2)) evs_nil] at hvs
  cases hvs
  have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p0 :=
    (Frames.ptrsOf_congr rfl).trans hpu
  obtain ⟨hm1, hgl1, p1, hp1, hord1, hmo1, hret⟩ := hAl (by simp [Good]) _ p0 rfl hpe hord0
  obtain ⟨np, rfl, hnp8, hlive, hna⟩ := hret _ rfl
  rw [hZ] at hlive hna
  have hT1 := Struct.trk_alloc hH hA hT rfl rfl hpe hm1 hgl1 hp1 hord1 hmo1 hd hbe
  set w1 := setVarHOLFinite (nm "np") (.val (.word np)) { st with locals := u.locals } with hw1
  -- the post of the body, before the locals of `np` are restored
  refine hoare_post (Q := fun r t => r = none ∧ LpI H Γ0 s0 p0 L0 t) ?_
    (fun r t _ _ ⟨hr, hI⟩ => ⟨hr, lpI_locals hH hI fun x hx => by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hx
      rcases hx with rfl | rfl | rfl <;> exact lookup_resVarEq_ne _ _ (by decide)⟩)
  have hT1' : Struct.Trk guestC H Γ0 s0 p0 (LCell L0) Γ0 w1 := Struct.trk_congr hH hT1 rfl rfl rfl rfl
  have hl1 : w1.locals.lookup (nm "l") = some (.val (.word L0.base)) := (lk_set_ne _ _ (by decide)).trans hl
  have he1 : w1.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 E))) :=
    (lk_set_ne _ _ (by decide)).trans he
  have hn1 : w1.locals.lookup (nm "n") = some (.val (.word N0)) := (lk_set_ne _ _ (by decide)).trans hn
  have hc1 : w1.locals.lookup (nm "cap") = some (.val (.word C0)) := (lk_set_ne _ _ (by decide)).trans hc
  have hnp1 : w1.locals.lookup (nm "np") = some (.val (.word np)) := lk_set_self _ _ _
  have hpw1 : ptrsOf w1 = some p1 := (Frames.ptrsOf_congr rfl).trans hp1
  have hmw1 : w1.memory = s0.memory := hm1.trans hmu
  -- the fresh block
  have hblk : ∀ a : Nat, np.toNat ≤ a → a < np.toNat + E * C0.toNat * 2 → ¬ p0.Allocated a := hna
  have hnio : ∀ a : Nat, np.toNat ≤ a → a < np.toNat + E * C0.toNat * 2 → ¬ InObj Γ0 a :=
    fun a h1 h2 hin => hblk a h1 h2 (Helpers.allocated_of_inObj hLay0 hin)
  -- header cells lie outside the block
  have hhdr : ∀ k, k < 3 → ¬ (np.toNat ≤ (L0.cell k).toNat ∧ (L0.cell k).toNat < np.toNat + E * C0.toNat * 2) := by
    intro k hk ⟨h1, h2⟩
    obtain ⟨-, h3, h4⟩ := cell_lay hord0 hLay0 hL0 (lst_slot hLay0 hL0 hLt hk)
    exact hnio _ h1 h2 ⟨L0, hL0, h3, h4⟩
  refine hoare_seq (R := fun r t => r = none ∧ t.locals = w1.locals ∧ ∃ Γ1 p2,
      Struct.Trk guestC H Γ0 s0 p0 (LCell L0) Γ1 t ∧ ptrsOf t = some p2 ∧ p1.Mono p2 ∧
      NewFresh Γ0 Γ1 p1 p1 ∧ (∀ k, k < 3 → t.memory (L0.cell k) = s0.memory (L0.cell k)) ∧
      ∀ k, 8 * k < E * N0.toNat → rd t.memory (np + BitVec.ofNat 64 (8 * k)) =
        rd s0.memory (rd s0.memory (L0.cell 0) + BitVec.ofNat 64 (8 * k))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · -- `memcpy(np, PTR, esz * n)`
    refine hoare_callD (FunSpec.and (FunSpec.and (Struct.sumSpec_rel (Helpers.summ_memcpy hH
      Helpers.tagSlots_guestC hF.hX hF.hal)) (Spec.Inv.funSpec_memcpy hF.hX))
      (Frames.funSpec_dom _)) ?_
    rintro s _ hs vs hvs callee v st2 ⟨⟨⟨hS, -⟩, hCp⟩, hd2, hbe2⟩ _
    subst hs
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    rw [lp_ev_lv hnp1] at ha1
    cases ha1
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    have ha2' := lp_ev_ld (ev_add2 (lp_ev_lv hl1) (ev_cw _ 0)) ha2
    subst ha2'
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [ev_mul2 (lp_ev_lv he1) (lp_ev_lv hn1)] at ha3
    cases ha3
    have hr3' : r3 = [] := by
      have h0 : evs w1 ([] : List (ExpHOL 64)) = some [] := evs_nil
      rw [h0] at hr3; exact (Option.some.inj hr3).symm
    subst hr3'
    have hG1 := Struct.trk_G hT1'
    have hGe : G guestC H Γ0 (callEntryStateHOLFinite w1 callee) :=
      Struct.G_congr (s := w1) hH rfl rfl rfl rfl hG1
    have hpe1 : ptrsOf (callEntryStateHOLFinite w1 callee) = some p1 :=
      (Frames.ptrsOf_congr rfl).trans hpw1
    have hargs : ArgsOK guestC Γ0 p1 Helpers.sigMemcpy.params
        [.val (.word np), .val (.word (rd w1.memory (L0.base + BitVec.ofNat 64 0))),
          .val (.word (BitVec.ofNat 64 E * N0))] := by
      refine ⟨rfl, fun i pt w hpt hw => ?_⟩
      rcases i with _ | _ | _ | i <;> simp [Helpers.sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
      · refine ⟨np, _, rfl, rfl, fun a ha => Or.inr ⟨?_, ?_⟩⟩
        · obtain ⟨h8, h1, h2⟩ := ha
          rw [hEN] at h2
          exact hnio _ (by omega) (by omega)
        · obtain ⟨h8, h1, h2⟩ := ha
          rw [hEN] at h2
          exact Or.inl ⟨by have := hlive.1; omega, by have := hlive.2; omega⟩
      · trivial
      · trivial
    obtain ⟨Γ1, q1, q2, hcs, -⟩ := hS (by simp [Good]) _ hGe ⟨p1, hpe1, hargs⟩ trivial
    have hq1 : q1 = p1 := by have := hcs.1; rw [hpe1] at this; exact (Option.some.inj this).symm
    subst hq1
    have hnotArg : ∀ a, ArgCells Helpers.sigMemcpy.params [.val (.word np),
        .val (.word (rd w1.memory (L0.base + BitVec.ofNat 64 0))),
        .val (.word (BitVec.ofNat 64 E * N0))] a → np.toNat ≤ a.toNat ∧
          a.toNat < np.toNat + E * C0.toNat * 2 := by
      intro a ha
      have ha' := Struct.argCells_memcpy (gr := false) ha
      obtain ⟨h8, h1, h2⟩ := ha'
      rw [hEN] at h2
      omega
    have hT2 := Struct.trk_call hT1' hord0 hLay0 rfl rfl hcs (fun g _ => by simp [Helpers.sigMemcpy])
      (fun a ha => Or.inr (Or.inl (hblk _ (hnotArg a ha).1 (hnotArg a ha).2)))
      (fun a _ h => h.elim) hd2 hbe2
    -- the copy
    obtain ⟨z, hz, hzb, hzt, hzs⟩ := harr0
    have hzbd := (Struct.obj_bounds hord0 hLay0 hz).2.1
    have hz8 : z.lo % 8 = 0 := (hLay0.1 z hz).1
    have hP0 : rd w1.memory (L0.base + BitVec.ofNat 64 0) = z.base := by
      rw [hmw1]; exact hzb.symm
    have hP0'' : (rd w1.memory (L0.base + BitVec.ofNat 64 0)).toNat = z.base.toNat := by rw [hP0]
    have hzbd' : z.base.toNat + z.size ≤ scratchEnd := hzbd
    have hz8' : z.base.toNat % 8 = 0 := hz8
    have hp1o := hord1
    unfold Ptrs.Ordered at hp1o
    have hhe64 : heapEnd < 2 ^ 64 := by decide
    have hzs' : E * C0.toNat ≤ z.size := hzs
    have hMC : Spec.Inv.MCPre np (rd w1.memory (L0.base + BitVec.ofNat 64 0))
        (BitVec.ofNat 64 E * N0) := by
      have hlv := hlive.2
      have hlv1 := hlive.1
      refine ⟨by rw [hEN]; omega, by rw [hEN]; omega, by rw [hEN, hP0'']; omega, ?_⟩
      intro a ⟨ha1, ha2⟩ ⟨hb1, hb2⟩
      rw [hEN] at ha2 hb2
      rw [hP0''] at hb1 hb2
      have hnp8' : np.toNat / 8 * 8 = np.toNat := by omega
      rw [hnp8'] at ha1
      have hzq : z.base.toNat / 8 * 8 = z.base.toNat := by omega
      rw [hzq] at hb1
      exact hblk a.toNat (by omega) (by omega)
        (Helpers.allocated_of_inObj hLay0 ⟨z, hz, by unfold Obj.lo; omega, by unfold Obj.hi; omega⟩)
    have hcopy : ∀ k, 8 * k < E * N0.toNat → rd st2.memory (np + BitVec.ofNat 64 (8 * k)) =
        rd s0.memory (rd s0.memory (L0.cell 0) + BitVec.ofNat 64 (8 * k)) := by
      intro k hk
      have hNn : (BitVec.ofNat 64 E * N0).toNat = E * C0.toNat := hEN
      have hCW := Spec.Inv.copyPost_words (hCp np (rd w1.memory (L0.base + BitVec.ofNat 64 0))
        (BitVec.ofNat 64 E * N0) rfl hMC v rfl) hMC (by omega)
        (by rw [hP0'']; exact hz8') (by rw [hNn, Nat.mul_mod, hE8]; simp) (k := k) (by rw [hNn, ← hNC]; exact hk)
      have e1 : st2.memory (np + BitVec.ofNat 64 (8 * k)) =
          w1.memory (rd w1.memory (L0.base + BitVec.ofNat 64 0) + BitVec.ofNat 64 (8 * k)) := hCW.1
      rw [hmw1] at e1
      unfold rd
      rw [e1]
      rfl
    refine ⟨rfl, rfl, Γ1, q2, Struct.trk_congr hH hT2 rfl rfl rfl rfl,
      (Frames.ptrsOf_congr rfl).trans hcs.2.1, hcs.2.2.1, hcs.2.2.2.2.2.2.2.2.1 rfl, fun k hk => ?_,
      hcopy⟩
    show st2.memory (L0.cell k) = s0.memory (L0.cell k)
    rw [sumCore_keep hcs hGe hL0 (lst_slot hLay0 hL0 hLt hk) (lst_prot _ hLt k)
      (fun h => hhdr k hk (hnotArg _ h))]
    show w1.memory (L0.cell k) = _
    rw [hmw1]
  -- the array joins `Γ`, then the two header stores
  refine hoare_seq (R := fun r t => r = none ∧ t.locals = w1.locals ∧ ∃ Γ2,
      Struct.Trk guestC H Γ0 s0 p0 (LCell L0) Γ2 t ∧ (⟨np, tLSTAh, E * C0.toNat * 2⟩ : Obj) ∈ Γ2 ∧
      (∃ L ∈ Γ2, L.base = L0.base ∧ L.ty = L0.ty ∧ rd t.memory (L.cell 0) = np ∧
        rd t.memory (L.cell 1) = N0 ∧ rd t.memory (L.cell 2) = C0) ∧
      ∀ k, 8 * k < E * N0.toNat → rd t.memory (np + BitVec.ofNat 64 (8 * k)) =
        rd s0.memory (rd s0.memory (L0.cell 0) + BitVec.ofNat 64 (8 * k))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => L0.base + BitVec.ofNat 64 0) (fun _ => np) ?_ ?_ ?_
    · rintro t _ ⟨_, hlt, -⟩ w hw
      rw [ev_add2 (lp_ev_lv (hlt ▸ hl1)) (ev_cw _ 0)] at hw
      cases hw; rfl
    · rintro t _ ⟨_, hlt, -⟩ v hv
      rw [lp_ev_lv (hlt ▸ hnp1)] at hv
      cases hv; rfl
    · intro t _ ⟨_, hlt, Γ1, p2, hT2, hpt, hmo2, hnf, hkeep, hcp⟩
      -- the new array object
      obtain ⟨m11, m12, m13⟩ := hmo1
      obtain ⟨m21, m22, m23⟩ := hmo2
      obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord0
      have hl1' := hlive.1
      have hl2' := hlive.2
      have hT3 := trk_addObjI (x := ⟨np, tLSTAh, E * C0.toNat * 2⟩) hH hM hT2 hpt hnp8
        (by show E * C0.toNat * 2 % 8 = 0; rw [Nat.mul_mod, Nat.mul_mod E, hE8]; simp)
        (by show 0 < E * C0.toNat * 2; have := Nat.mul_pos hE0 hc00; omega)
        (by show 8 ≤ E * C0.toNat * 2
            have h8E : 8 ≤ E := by omega
            have := Nat.mul_le_mul h8E (show 1 ≤ C0.toNat by omega)
            omega)
        (by show heapBase ≤ np.toNat ∧ np.toNat + E * C0.toNat * 2 ≤ p2.hp; omega)
        (fun a (h1 : np.toNat ≤ a.toNat) (h2 : a.toNat < np.toNat + E * C0.toNat * 2) => by
          have := hblk _ h1 h2
          unfold Fresh; unfold Ptrs.Allocated at this
          left; constructor <;> omega)
        (fun a ⟨(h1 : np.toNat ≤ a.toNat), (h2 : a.toNat < np.toNat + E * C0.toNat * 2)⟩ ⟨o, ho, hlo, hhi⟩ => by
          rcases hnf o ho a hlo hhi with ⟨o0, ho0, -, -, hlo0, hhi0⟩ | hfr
          · exact hnio _ h1 h2 ⟨o0, ho0, hlo0, hhi0⟩
          · unfold Fresh at hfr; omega)
        (fun k => lstah_prot k) (by show guestC.tags.lookup tLSTAh = none; decide)
        (hLH.arr _ _ _ (Or.inl rfl))
      obtain ⟨L1, hL1, hL1b, hL1t, -⟩ := Struct.trk_ext hT2 L0 hL0
      have hL1' : L1 ∈ Γ1 ++ [⟨np, tLSTAh, E * C0.toNat * 2⟩] := List.mem_append_left _ hL1
      have hLt1 : L1.ty ∈ lstTys := hL1t ▸ hLt
      have hcell : ∀ k, L1.cell k = L0.cell k := fun k => by unfold Obj.cell; rw [hL1b]
      have hlo1 : L1.lo + 24 ≤ scratchEnd := by unfold Obj.lo at *; rw [hL1b]; exact hlo0
      have ha : L0.base + BitVec.ofNat 64 0 = L1.cell 0 := by rw [hcell]; rfl
      have hne01 := lcell_ne (o := L1) hlo1 (i := 0) (j := 1) (by omega) (by omega) (by omega)
      have hne02 := lcell_ne (o := L1) hlo1 (i := 0) (j := 2) (by omega) (by omega) (by omega)
      have hk1 : rd t.memory (L1.cell 1) = N0 := by
        unfold rd; rw [hcell, hkeep 1 (by omega)]; rfl
      have hk2 : rd t.memory (L1.cell 2) = C0 := by
        unfold rd; rw [hcell, hkeep 2 (by omega)]; rfl
      have hok : LstOK (Γ1 ++ [⟨np, tLSTAh, E * C0.toNat * 2⟩])
          (Spec.Inv.upd t.memory (L0.base + BitVec.ofNat 64 0) np) L1 := by
        rw [ha]
        refine ⟨hlo1, ?_, ?_, ?_⟩
        · unfold lN lC
          rw [rd_iupd_ne (Ne.symm hne01), rd_iupd_ne (Ne.symm hne02), hk1, hk2]
          exact hnc0
        · unfold lC; rw [rd_iupd_ne (Ne.symm hne02), hk2]; exact hc00
        · unfold lP lC
          rw [rd_iupd_self, rd_iupd_ne (Ne.symm hne02), hk2, hL1t]
          exact ⟨_, List.mem_append_right _ (List.mem_singleton_self _), rfl, Or.inl rfl,
            by show E * C0.toNat ≤ E * C0.toNat * 2; omega⟩
      refine ⟨rfl, hlt, _, trk_lstore hH hLH hT3 hL1' hLt1 (k := 0) (by omega) ha
          (Or.inl rfl) _ hok, List.mem_append_right _ (List.mem_singleton_self _),
        ⟨L1, hL1', hL1b, hL1t, ?_, ?_, ?_⟩, ?_⟩
      · show rd (Spec.Inv.upd t.memory (L0.base + BitVec.ofNat 64 0) np) (L1.cell 0) = np
        rw [ha, rd_iupd_self]
      · show rd (Spec.Inv.upd t.memory (L0.base + BitVec.ofNat 64 0) np) (L1.cell 1) = N0
        rw [ha, rd_iupd_ne (Ne.symm hne01), hk1]
      · show rd (Spec.Inv.upd t.memory (L0.base + BitVec.ofNat 64 0) np) (L1.cell 2) = C0
        rw [ha, rd_iupd_ne (Ne.symm hne02), hk2]
      · intro k hk
        show rd (Spec.Inv.upd t.memory (L0.base + BitVec.ofNat 64 0) np) (np + BitVec.ofNat 64 (8 * k)) = _
        have hNC' : N0.toNat = C0.toNat := by rw [hNC]
        have hEN' : E * N0.toNat = E * C0.toNat := by rw [hNC']
        have hlv := hlive.2
        have hp1o := hord1
        unfold Ptrs.Ordered at hp1o
        have hhe64 : heapEnd < 2 ^ 64 := by decide
        have hb : (np + BitVec.ofNat 64 (8 * k)).toNat = np.toNat + 8 * k :=
          Spec.Inv.add_ofNat_toNat (by omega)
        have hne : np + BitVec.ofNat 64 (8 * k) ≠ L0.base + BitVec.ofNat 64 0 := by
          intro he
          refine hhdr 0 (by omega) ?_
          have h0e : L0.cell 0 = np + BitVec.ofNat 64 (8 * k) := he.symm
          rw [h0e, hb]; omega
        rw [rd_iupd_ne hne]
        exact hcp k hk
  · refine Spec.Inv.hoare_store_w (fun _ => L0.base + BitVec.ofNat 64 16) (fun _ => C0 * BitVec.ofNat 64 2)
      ?_ ?_ ?_
    · rintro t _ ⟨_, hlt, -⟩ w hw
      rw [ev_add2 (lp_ev_lv (hlt ▸ hl1)) (ev_cw _ 16)] at hw
      cases hw; rfl
    · rintro t _ ⟨_, hlt, -⟩ v hv
      rw [ev_mul2 (lp_ev_lv (hlt ▸ hc1)) (ev_cw _ 2)] at hv
      cases hv; rfl
    · intro t _ ⟨_, hlt, Γ2, hT3, harr, ⟨L1, hL1, hL1b, hL1t, h0, h1, h2⟩, hcp2⟩
      have hLt1 : L1.ty ∈ lstTys := hL1t ▸ hLt
      have hlo1 : L1.lo + 24 ≤ scratchEnd := by unfold Obj.lo at *; rw [hL1b]; exact hlo0
      have ha : L0.base + BitVec.ofNat 64 16 = L1.cell 2 := by
        rw [show L1.cell 2 = L1.base + BitVec.ofNat 64 16 from rfl, hL1b]
      have hne02 := lcell_ne (o := L1) hlo1 (i := 0) (j := 2) (by omega) (by omega) (by omega)
      have hne12 := lcell_ne (o := L1) hlo1 (i := 1) (j := 2) (by omega) (by omega) (by omega)
      have hC2 : (C0 * BitVec.ofNat 64 2).toNat = C0.toNat * 2 := by
        rw [toNat_mul_small (by rw [toNat_ofNat_small (by decide)]; omega), toNat_ofNat_small (by decide)]
      have hok : LstOK Γ2 (Spec.Inv.upd t.memory (L0.base + BitVec.ofNat 64 16) (C0 * BitVec.ofNat 64 2)) L1 := by
        rw [ha]
        refine ⟨hlo1, ?_, ?_, ?_⟩
        · unfold lN lC
          rw [rd_iupd_ne hne12, rd_iupd_self, h1, hC2]
          omega
        · unfold lC; rw [rd_iupd_self, hC2]; omega
        · unfold lP lC
          rw [rd_iupd_ne hne02, rd_iupd_self, h0, hC2, hL1t]
          exact ⟨_, harr, rfl, Or.inl rfl,
            by show E * (C0.toNat * 2) ≤ E * C0.toNat * 2; rw [Nat.mul_assoc]⟩
      refine ⟨rfl, hlt ▸ hl1, hlt ▸ he1, hlt ▸ hn1, Γ2, trk_lstore hH hLH hT3 hL1 hLt1 (k := 2)
        (by omega) ha (Or.inr (Or.inr rfl)) _ hok, L1, hL1, hL1b, hL1t, ?_, ?_, ?_⟩
      · show rd (Spec.Inv.upd t.memory (L0.base + BitVec.ofNat 64 16) (C0 * BitVec.ofNat 64 2)) (L1.cell 1) = _
        rw [ha, rd_iupd_ne hne12, h1]
      · show (lN s0.memory L0).toNat <
          (rd (Spec.Inv.upd t.memory (L0.base + BitVec.ofNat 64 16) (C0 * BitVec.ofNat 64 2)) (L1.cell 2)).toNat
        have hN0' : (lN s0.memory L0).toNat = C0.toNat := by rw [← hN0, hNC]
        rw [ha, rd_iupd_self, hC2, hN0']
        omega
      · -- the value part
        show LpV Γ0 s0 (Spec.Inv.upd t.memory (L0.base + BitVec.ofNat 64 16) (C0 * BitVec.ofNat 64 2))
          p0 Γ2 L0 L1
        have hNC' : N0.toNat = C0.toNat := by rw [hNC]
        have hEN' : E * N0.toNat = E * C0.toNat := by rw [hNC']
        have hlv := hlive.2
        have hc0 : rd (Spec.Inv.upd t.memory (L0.base + BitVec.ofNat 64 16) (C0 * BitVec.ofNat 64 2))
            (L1.cell 0) = np := by
          rw [ha, rd_iupd_ne hne02]; exact h0
        have hp1o := hord1
        unfold Ptrs.Ordered at hp1o
        have hhe64 : heapEnd < 2 ^ 64 := by decide
        refine Or.inr ?_
        unfold LpVr
        rw [hc0]
        refine ⟨fun k hk => ?_, by omega, ⟨by omega, fun a h1 h2 => hblk a h1 (by omega)⟩, ⟨_, harr, rfl, rfl⟩⟩
        have hb : (np + BitVec.ofNat 64 (8 * k)).toNat = np.toNat + 8 * k :=
          Spec.Inv.add_ofNat_toNat (by omega)
        have hne : np + BitVec.ofNat 64 (8 * k) ≠ L0.base + BitVec.ofNat 64 16 := by
          intro he
          refine hhdr 2 (by omega) ?_
          have h2e : L0.cell 2 = np + BitVec.ofNat 64 (8 * k) := he.symm
          rw [h2e, hb]; omega
        rw [rd_iupd_ne hne]
        exact hcp2 k hk

/-! ## The body -/

theorem lp_hoare (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys)
    (hl : s0.locals.lookup (nm "l") = some (.val (.word L0.base)))
    (he : s0.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE L0.ty))))) :
    Hoare σ X (fun u => u = s0) lpBody (LpQ H Γ0 s0 p0 L0) := by
  have hH := hF.hH
  obtain ⟨hlo0, hnc0, hc00, harr0⟩ := lst_hook hLH hG0 hL0 hLt
  have hT0 : Struct.Trk guestC H Γ0 s0 p0 (LCell L0) Γ0 s0 := Struct.trk_refl hG0 hp0
  have hAl0 : p0.Allocated (L0.cell 1).toNat := by
    obtain ⟨q0, hq0, hord0, hLay0, -⟩ := id hG0
    rw [hp0] at hq0
    cases hq0
    obtain ⟨-, h3, h4⟩ := cell_lay hord0 hLay0 hL0 (lst_slot hLay0 hL0 hLt (k := 1) (by omega))
    exact Helpers.allocated_of_inObj hLay0 ⟨L0, hL0, h3, h4⟩
  unfold lpBody
  refine Mpt.Leaves.hoare_decL (lpQ_locals hH) fun u _ hu v hv _ => ?_
  subst u
  have hv' := lp_ev_ld (ev_add2 (lp_ev_lv hl) (ev_cw _ 8)) hv
  subst hv'
  set u1 := setVarHOLFinite (nm "n") (.val (.word (rd s0.memory (L0.base + BitVec.ofNat 64 8)))) s0
    with hu1
  have hl1 : u1.locals.lookup (nm "l") = some (.val (.word L0.base)) := (lk_set_ne _ _ (by decide)).trans hl
  refine Mpt.Leaves.hoare_decL (lpQ_locals hH) fun u _ hu v hv _ => ?_
  subst u
  have hv' := lp_ev_ld (ev_add2 (lp_ev_lv hl1) (ev_cw _ 16)) hv
  subst hv'
  set u2 := setVarHOLFinite (nm "cap") (.val (.word (rd u1.memory (L0.base + BitVec.ofNat 64 16)))) u1
    with hu2
  have hN : rd s0.memory (L0.base + BitVec.ofNat 64 8) = lN s0.memory L0 := rfl
  have hC : rd u1.memory (L0.base + BitVec.ofNat 64 16) = lC s0.memory L0 := rfl
  have hl2 : u2.locals.lookup (nm "l") = some (.val (.word L0.base)) := (lk_set_ne _ _ (by decide)).trans hl1
  have he2 : u2.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE L0.ty)))) :=
    (lk_set_ne _ _ (by decide)).trans ((lk_set_ne _ _ (by decide)).trans he)
  have hn2 : u2.locals.lookup (nm "n") = some (.val (.word (lN s0.memory L0))) := by
    rw [← hN]; exact (lk_set_ne _ _ (by decide)).trans (lk_set_self _ _ _)
  have hc2 : u2.locals.lookup (nm "cap") = some (.val (.word (lC s0.memory L0))) := by
    rw [← hC]; exact lk_set_self _ _ _
  have hT2 : Struct.Trk guestC H Γ0 s0 p0 (LCell L0) Γ0 u2 := Struct.trk_congr hH hT0 rfl rfl rfl rfl
  have hp2 : ptrsOf u2 = some p0 := (Frames.ptrsOf_congr rfl).trans hp0
  refine hoare_seq (R := fun r u => r = none ∧ LpI H Γ0 s0 p0 L0 u) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (lp_tail hH hLH hLt hAl0) fun _ _ h => h.2)
  refine hoare_ite ?_ ?_
  · intro t ht ⟨hpt, w, hc, hw0⟩ htr
    subst t
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hc hw0
    rw [lp_ev_lv hn2] at hx
    cases hx
    rw [lp_ev_lv hc2] at hy
    cases hy
    have hge := notLower_true hxy
    have hNC : lN s0.memory L0 = lC s0.memory L0 := BitVec.eq_of_toNat_eq (by omega)
    exact (lp_grow hF hM hLH hG0 hp0 hL0 hLt hT2 rfl hp2 hl2 he2 hn2 hc2 hNC) _ ht rfl htr
  · refine hoare_skip fun t _ ⟨ht, hc⟩ => ?_
    subst t
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [lp_ev_lv hn2] at hx
    cases hx
    rw [lp_ev_lv hc2] at hy
    cases hy
    obtain ⟨z, hz, hzb, hzt, hzs⟩ := harr0
    have hlt := notLower_false hxy
    refine ⟨rfl, hl2, he2, hn2, Γ0, hT2, L0, hL0, rfl, rfl, rfl, hlt, Or.inl ⟨rfl, z, hz, hzb, ?_, ?_⟩⟩
    · rcases hzt with h | ⟨h, -⟩
      · exact Or.inl h
      · exact Or.inr h
    · exact le_trans (Nat.mul_le_mul_left _ (by omega)) hzs

end body


/-- For an element size of 8 (logs), the returned slot is cell `N0` of a list array of `Γ'`
(what `trk_astore` needs for `st slot, x`). -/
theorem lpR_slot8 {L0 : Obj} {N0 : BitVec 64} {v : ValueHOL 64} {t : State σ} {Γ' : Gam}
    (h : LpR L0 N0 v t Γ') (hE : lstE L0.ty = 8) :
    ∃ x ∈ Γ', IsLstA x.ty ∧ x.HasSlot N0.toNat ∧ v = .val (.word (x.cell N0.toNat)) := by
  obtain ⟨L, -, -, -, rfl, -, x, hx, hxb, hxt, hxs⟩ := h
  rw [hE] at hxs
  refine ⟨x, hx, by rcases hxt with h | ⟨h, -⟩ <;> [exact Or.inl h; exact Or.inr h],
    by unfold Obj.HasSlot; omega, ?_⟩
  rw [hE]
  congr 2
  unfold Obj.cell
  rw [hxb]
  congr 1
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
  rw [Nat.mod_eq_of_lt (show 8 < 2 ^ 64 by decide), Nat.mul_comm]

/-- **`lpR_slot8` with the array facts** (package L): the final header, its array (`base = PTR`,
room for `N0 + 1` elements) and the slot returned. -/
theorem lpR_slot8' {L0 : Obj} {N0 : BitVec 64} {v : ValueHOL 64} {t : State σ} {Γ' : Gam}
    (h : LpR L0 N0 v t Γ') (hE : lstE L0.ty = 8) :
    ∃ L ∈ Γ', L.base = L0.base ∧ L.ty = L0.ty ∧ (lN t.memory L).toNat = N0.toNat + 1 ∧
      ∃ x ∈ Γ', IsLstA x.ty ∧ x.base = lP t.memory L ∧ x.HasSlot N0.toNat ∧
        v = .val (.word (x.cell N0.toNat)) := by
  obtain ⟨L, hL, hb, ht, hv, hN, x, hx, hxb, hxt, hxs⟩ := h
  rw [hE] at hxs hv
  refine ⟨L, hL, hb, ht, hN, x, hx, by rcases hxt with h | ⟨h, -⟩ <;> [exact Or.inl h; exact Or.inr h],
    hxb, by unfold Obj.HasSlot; omega, ?_⟩
  rw [hv]
  congr 2
  unfold Obj.cell
  rw [hxb]
  congr 1
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (show 8 < 2 ^ 64 by decide),
    Nat.mul_comm]

/-! ## The entries -/

/-- Pre of the precise spec: the arguments are a list header of `Γ` and its element size. -/
def LpPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ L ∈ Γ, L.ty ∈ lstTys ∧ vs = [.val (.word L.base), .val (.word (BitVec.ofNat 64 (lstE L.ty)))]

/-- The cells written: the header cells of the list. -/
def LpPW (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) (a : BitVec 64) : Prop :=
  ∃ L ∈ Γ, L.ty ∈ lstTys ∧ vs[0]? = some (.val (.word L.base)) ∧ LCell L a

/-- The post: `LpR` for the list (`N0` its entry length). -/
def LpPost (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → ∃ L ∈ Γ, L.ty ∈ lstTys ∧ vs[0]? = some (.val (.word L.base)) ∧
    LpR L (lN s.memory L) v t Γ' ∧ ∀ p0, ptrsOf s = some p0 → LpVx Γ s t.memory p0 Γ' L

/-- The header cells of a list are `prot` cells of `Γ`. -/
theorem lcell_prot {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {L : Obj} (hL : L ∈ Γ)
    (hLt : L.ty ∈ lstTys) {a : BitVec 64} (ha : LCell L a) : ProtCell guestC Γ a := by
  obtain ⟨q, -, -, hLay, -⟩ := hG
  have key : ∀ k, k < 3 → a = L.cell k → ProtCell guestC Γ a := fun k hk he =>
    ⟨L, hL, k, lst_slot hLay hL hLt hk, lst_prot _ hLt k, he⟩
  rcases ha with h | h | h
  · exact key 0 (by omega) h
  · exact key 1 (by omega) h
  · exact key 2 (by omega) h

/-- A header cell is slot `k < 3` of the header. -/
theorem lcell_slot {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {L : Obj} (hL : L ∈ Γ)
    (hLt : L.ty ∈ lstTys) {a : BitVec 64} (ha : LCell L a) : ∃ k, L.HasSlot k ∧ a = L.cell k := by
  obtain ⟨q, -, -, hLay, -⟩ := hG
  rcases ha with h | h | h
  · exact ⟨0, lst_slot hLay hL hLt (by omega), h⟩
  · exact ⟨1, lst_slot hLay hL hLt (by omega), h⟩
  · exact ⟨2, lst_slot hLay hL hLt (by omega), h⟩

/-- The run of `lst_push` on a list header `L0 ∈ Γ0`, as a `SumCore` over any footprint that
contains the header cells. -/
theorem lp_run {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) {sg : Sig} (hsg : sg.ret = []) (hgr : sg.grows = true)
    {PWs : BitVec 64 → Prop} {vs : List (ValueHOL 64)} {body : ProgHOL 64}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {rs : ShapeHOL}
    (hl : lookupCodeHOLFinite X.code.lookup (nm "lst_push") vs = some (body, callee, rs))
    {s0 : State σ} (hs : InCtx s0 X) (hloc : s0.locals = callee)
    {r : PanSemResultExact 64} (hr : (evaluateHOLFiniteState s0 body).1 = some r) {v : ValueHOL 64}
    (hv : r = .returned v) {Γ0 : Gam} (hG0 : G guestC H Γ0 s0) {p0 : Ptrs} (hp0 : ptrsOf s0 = some p0)
    {L0 : Obj} (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys)
    (hvs : vs = [.val (.word L0.base), .val (.word (BitVec.ofNat 64 (lstE L0.ty)))])
    (hPW : ∀ a, LCell L0 a → PWs a) :
    ∃ Γ' p', SumCore guestC H sg PWs Γ0 s0 vs r (evaluateHOLFiniteState s0 body).2 Γ' p0 p' ∧
      LpR L0 (lN s0.memory L0) v (evaluateHOLFiniteState s0 body).2 Γ' ∧
      LpVx Γ0 s0 (evaluateHOLFiniteState s0 body).2.memory p0 Γ' L0 := by
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_lst_push (by decide) hl'
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hla : s0.locals.lookup (nm "l") = some (.val (.word L0.base)) := by rw [hloc]; exact hA
  have hle : s0.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE L0.ty)))) := by
    rw [hloc]; exact hB
  have H' := lp_hoare hF hM hLH hG0 hp0 hL0 hLt hla hle s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', hT, hR, hV⟩ := H' v rfl
  obtain ⟨p', hc⟩ := Struct.trk_sumCore (sg := sg) (PWs := PWs) (r := r)
    (vs := [.val (.word L0.base), .val (.word (BitVec.ofNat 64 (lstE L0.ty)))]) hT hp0 hPW
    (fun h => by rw [hgr] at h; cases h) (fun _ _ w _ i rt w' hi _ => by rw [hsg] at hi; cases hi)
  exact ⟨Γ', p', hc, hR, hV⟩

/-- **`lst_push`, the precise spec**: on a list header `L ∈ Γ` with its element size, only the
header cells are written and a return is `LpR`. -/
theorem sumSpec_lst_push {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) : SumSpecA σ X guestC H (nm "lst_push") lpSigA LpPre LpPW LpPost := by
  refine sumSpecA_of_returns (noExc_lst_push hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨L0, hL0, hLt, hvs⟩ := hpre
  obtain ⟨Γ', p', hc, hR⟩ := lp_run hF hM hLH (sg := lpSigA) rfl rfl hl hs hloc hr hv hG0 hp0 hL0 hLt
    hvs (PWs := fun a => ProtCell guestC Γ0 a ∧ LpPW vs s0 Γ0 a)
    (fun a ha => ⟨lcell_prot hG0 hL0 hLt ha, L0, hL0, hLt, by rw [hvs]; rfl, ha⟩)
  exact ⟨Γ', p0, p', hc, fun w hw => ⟨L0, hL0, hLt, by rw [hvs]; rfl, by
    rw [hv] at hw; cases hw
    exact ⟨hR.1, fun q hq => by obtain rfl := Option.some.inj (hp0.symm.trans hq); exact hR.2⟩⟩⟩

/-- **The `lst_push` fold entry** for the list type `t`. -/
theorem csumm_lst_push {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) {t : Nat} (ht : t ∈ lstTys) :
    CSumm σ X guestC H (nm "lst_push") (lpSig t) (lpCaps t) := by
  refine sumSpecA_of_returns (noExc_lst_push hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs _
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨-, -, A, B, rfl, sa, sb, -, -⟩ := lookupCode_two code_lst_push (by decide) hl'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one sa
  obtain ⟨Bw, rfl⟩ := val_of_shapeEq_one sb
  obtain ⟨p0, hp0, -, hA⟩ := hargs
  obtain ⟨w0, e0, L0, hL0, hLb, hLty⟩ := hA 0 _ _ rfl rfl
  have e1 := hA 1 _ _ rfl rfl
  simp only [ArgOK, wordOf, Option.some.injEq] at e0 e1
  subst e0 e1 hLty
  obtain ⟨Γ', p', hc, -⟩ := lp_run hF hM hLH (sg := lpSig L0.ty) rfl rfl hl hs hloc hr hv hG0 hp0 hL0 ht
    (by rw [hLb]) (PWs := fun a => ProtCell guestC Γ0 a ∧ CapPW (lpCaps L0.ty) s0 Γ0 a)
    (fun a ha => ⟨lcell_prot hG0 hL0 ht ha, by
      obtain ⟨k, hk, rfl⟩ := lcell_slot hG0 hL0 ht ha
      exact ⟨_, List.mem_singleton_self _, Or.inr ⟨rfl, L0, hL0, Or.inl rfl, k, hk, rfl⟩⟩⟩)
  exact ⟨Γ', p0, p', hc, trivial⟩

/-- The `lst_push` entries, one per list type (for the base table; not yet merged). -/
def lstPushTab : CTab := lstTys.map fun t => (nm "lst_push", lpSig t, lpCaps t)

theorem lstPushTab_sound {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) : CTabSound σ X guestC H lstPushTab := by
  intro f sg cs hm
  simp only [lstPushTab, List.mem_map, Prod.mk.injEq] at hm
  obtain ⟨t, ht, rfl, rfl, rfl⟩ := hm
  exact csumm_lst_push hF hM hLH ht

end InitECandidate.Solver.MemSafe.HtabEntries
