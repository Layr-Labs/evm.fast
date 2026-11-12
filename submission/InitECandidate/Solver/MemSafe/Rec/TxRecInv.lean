import InitECandidate.Solver.MemSafe.Rec.TxRecCode
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the invariants

* `txrBL Ar A T NF K`: locals (`tx = Ar`, `arr = A`, `t = T`, `nfields = NF`, `k = K`, `w` a word, `v` a 4-word struct).
* `Pk Γ mem ap an`: the access-list records `(ap, an)` are good (`an < 2^28`, `SubArr`, every `ns_j < 2^28`).
* `TF Ar Γ mem`: the facts about the `DATA_N`, `ACC_N`, `BH_N`, `AUTH_N` cells of the record at `Ar`.
* `ETz b27 b35`: `TF` plus "slot 27 / slot 35 is still 0" flags.
* `StoreKeep` / `CallKeep`: an `E` that survives non-fact block stores / non-writing calls.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

def txrNfOf : Nat → Nat
  | 0 => 9 | 1 => 11 | 2 => 12 | 3 => 14 | _ => 13

/-- The value of `k` after stage `s` for transaction type `t`. -/
def txrKst (s t : Nat) : Nat :=
  (if 1 ≤ s then (if t = 0 then 0 else 1) else 0) + (if 2 ≤ s then 1 else 0) +
  (if 3 ≤ s then (if t ≤ 1 then 1 else 2) else 0) + (if 4 ≤ s then 1 else 0) +
  (if 5 ≤ s then 1 else 0) + (if 6 ≤ s then 1 else 0) + (if 7 ≤ s then 1 else 0) +
  (if 8 ≤ s then (if t = 0 then 0 else 1) else 0) + (if 9 ≤ s then (if t = 3 then 2 else 0) else 0) +
  (if 10 ≤ s then (if t = 4 then 1 else 0) else 0)

theorem txrKst_fin : ∀ t, t ≤ 4 → txrKst 10 t + 3 = txrNfOf t := by decide

def txrNames : List MlS :=
  [nm "tx", nm "arr", nm "t", nm "nfields", nm "k", nm "w", nm "v"]

def txrBL (Ar A T NF K : BitVec 64) (m : LocalsH) : Prop :=
  LV [(nm "tx", Wd Ar), (nm "arr", Wd A), (nm "t", Wd T), (nm "nfields", Wd NF), (nm "k", Wd K)] m ∧
  (∃ W : BitVec 64, m.lookup (nm "w") = some (Wd W)) ∧
  (∃ a b c d : BitVec 64, m.lookup (nm "v") = some (wv [a, b, c, d]))

theorem bl_names (x : MlS) (hx : x ∉ txrNames) : x ≠ nm "tx" ∧ x ≠ nm "arr" ∧ x ≠ nm "t" ∧
    x ≠ nm "nfields" ∧ x ≠ nm "k" ∧ x ≠ nm "w" ∧ x ≠ nm "v" := by
  simp only [txrNames, List.mem_cons, List.not_mem_nil, or_false, not_or] at hx
  exact ⟨hx.1, hx.2.1, hx.2.2.1, hx.2.2.2.1, hx.2.2.2.2.1, hx.2.2.2.2.2.1, hx.2.2.2.2.2.2⟩

theorem bl_kv_ne {Ar A T NF K : BitVec 64} {x : MlS}
    (hx : x ≠ nm "tx" ∧ x ≠ nm "arr" ∧ x ≠ nm "t" ∧ x ≠ nm "nfields" ∧ x ≠ nm "k") :
    ∀ q ∈ [(nm "tx", Wd Ar), (nm "arr", Wd A), (nm "t", Wd T), (nm "nfields", Wd NF),
      (nm "k", Wd K)], q.1 ≠ x := by
  intro q hq
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
  rcases hq with rfl | rfl | rfl | rfl | rfl
  exacts [Ne.symm hx.1, Ne.symm hx.2.1, Ne.symm hx.2.2.1, Ne.symm hx.2.2.2.1, Ne.symm hx.2.2.2.2]

theorem bl_set {Ar A T NF K : BitVec 64} {s : State σ} {x : MlS} (hx : x ∉ txrNames)
    (v : ValueHOL 64) (h : txrBL Ar A T NF K s.locals) : txrBL Ar A T NF K (setVarHOLFinite x v s).locals := by
  obtain ⟨h1, ⟨W, hW⟩, ⟨a, b, c, d, hv⟩⟩ := h
  obtain ⟨n1, n2, n3, n4, n5, n6, n7⟩ := bl_names x hx
  refine ⟨lv_set h1 (bl_kv_ne ⟨n1, n2, n3, n4, n5⟩) v, ⟨W, ?_⟩, ⟨a, b, c, d, ?_⟩⟩
  · rw [lk_set_ne _ _ n6]; exact hW
  · rw [lk_set_ne _ _ n7]; exact hv

theorem bl_res {Ar A T NF K : BitVec 64} {m : LocalsH} {x : MlS} (hx : x ∉ txrNames)
    (o : Option (ValueHOL 64)) (h : txrBL Ar A T NF K m) : txrBL Ar A T NF K (m.resVarEq (x, o)) := by
  obtain ⟨h1, ⟨W, hW⟩, ⟨a, b, c, d, hv⟩⟩ := h
  obtain ⟨n1, n2, n3, n4, n5, n6, n7⟩ := bl_names x hx
  refine ⟨lv_res h1 (bl_kv_ne ⟨n1, n2, n3, n4, n5⟩) o, ⟨W, ?_⟩, ⟨a, b, c, d, ?_⟩⟩
  · rw [lookup_resVarEq_ne _ _ n6]; exact hW
  · rw [lookup_resVarEq_ne _ _ n7]; exact hv

theorem bl_setw {Ar A T NF K : BitVec 64} {s : State σ} (W' : BitVec 64)
    (h : txrBL Ar A T NF K s.locals) : txrBL Ar A T NF K (setVarHOLFinite (nm "w") (Wd W') s).locals := by
  obtain ⟨h1, -, ⟨a, b, c, d, hv⟩⟩ := h
  refine ⟨lv_set h1 (bl_kv_ne ⟨by decide, by decide, by decide, by decide, by decide⟩) _,
    ⟨W', lk_set_self _ _ _⟩, ⟨a, b, c, d, ?_⟩⟩
  rw [lk_set_ne _ _ (by decide)]; exact hv

theorem bl_setv {Ar A T NF K : BitVec 64} {s : State σ} (a' b' c' d' : BitVec 64)
    (h : txrBL Ar A T NF K s.locals) :
    txrBL Ar A T NF K (setVarHOLFinite (nm "v") (wv [a', b', c', d']) s).locals := by
  obtain ⟨h1, ⟨W, hW⟩, -⟩ := h
  refine ⟨lv_set h1 (bl_kv_ne ⟨by decide, by decide, by decide, by decide, by decide⟩) _, ⟨W, ?_⟩,
    ⟨a', b', c', d', lk_set_self _ _ _⟩⟩
  rw [lk_set_ne _ _ (by decide)]; exact hW

theorem bl_setk {Ar A T NF K : BitVec 64} {s : State σ} (K' : BitVec 64)
    (h : txrBL Ar A T NF K s.locals) : txrBL Ar A T NF K' (setVarHOLFinite (nm "k") (Wd K') s).locals := by
  obtain ⟨h1, ⟨W, hW⟩, ⟨a, b, c, d, hv⟩⟩ := h
  refine ⟨?_, ⟨W, ?_⟩, ⟨a, b, c, d, ?_⟩⟩
  · intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl | rfl | rfl
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "tx")]; exact h1 (nm "tx", Wd Ar) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "arr")]; exact h1 (nm "arr", Wd A) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "t")]; exact h1 (nm "t", Wd T) (by simp)
    · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "nfields")]; exact h1 (nm "nfields", Wd NF) (by simp)
    · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by decide)]; exact hW
  · rw [lk_set_ne _ _ (by decide)]; exact hv

theorem bl_w {Ar A T NF K : BitVec 64} {s : State σ} (h : txrBL Ar A T NF K s.locals) :
    ∃ W : BitVec 64, s.locals.lookup (nm "w") = some (.val (.word W)) := h.2.1

theorem bl_v {Ar A T NF K : BitVec 64} {s : State σ} (h : txrBL Ar A T NF K s.locals) :
    ∃ a b c d : BitVec 64, s.locals.lookup (nm "v") = some (wv [a, b, c, d]) := h.2.2

theorem valid_v4 {s : State σ} {x : MlS} {v : ValueHOL 64} {a b c d : BitVec 64}
    (hx : s.locals.lookup x = some (wv [a, b, c, d]))
    (h : isValidValueHOLExact s.toExact .local x v = true) :
    ∃ a' b' c' d' : BitVec 64, v = wv [a', b', c', d'] := by
  have h1 := valid_local h hx
  rw [shapeOf_wv] at h1
  obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shape ((shapeEqHOL_eq_true _ _).mp h1)
  match ws, hl with
  | [a', b', c', d'], _ => exact ⟨a', b', c', d', rfl⟩

theorem bl_k {Ar A T NF K : BitVec 64} {m : LocalsH} (h : txrBL Ar A T NF K m) :
    m.lookup (nm "k") = some (Wd K) := h.1 (nm "k", Wd K) (by simp)
theorem bl_t {Ar A T NF K : BitVec 64} {m : LocalsH} (h : txrBL Ar A T NF K m) :
    m.lookup (nm "t") = some (Wd T) := h.1 (nm "t", Wd T) (by simp)
theorem bl_tx {Ar A T NF K : BitVec 64} {m : LocalsH} (h : txrBL Ar A T NF K m) :
    m.lookup (nm "tx") = some (Wd Ar) := h.1 (nm "tx", Wd Ar) (by simp)
theorem bl_arr {Ar A T NF K : BitVec 64} {m : LocalsH} (h : txrBL Ar A T NF K m) :
    m.lookup (nm "arr") = some (Wd A) := h.1 (nm "arr", Wd A) (by simp)


/-! ## The tx-cell facts -/

def txFacts : List Nat := [19, 25, 26, 27, 33, 34, 35]

def cl (Ar : BitVec 64) (mem : Mem) (k : Nat) : BitVec 64 := rd mem (Ar + BitVec.ofNat 64 (8 * k))

def Pk (Γ : Gam) (mem : Mem) (ap an : BitVec 64) : Prop :=
  an.toNat < 2 ^ 28 ∧ Hooks.SubArr Γ ap an.toNat Types.tACC 24 ∧
    ∀ j, j < an.toNat → (rd mem (ap + BitVec.ofNat 64 (24 * j + 16))).toNat < 2 ^ 28

def TF (Ar : BitVec 64) (Γ : Gam) (mem : Mem) : Prop :=
  (cl Ar mem 25).toNat < 2 ^ 28 ∧ (cl Ar mem 33).toNat < 2 ^ 28 ∧
  Pk Γ mem (cl Ar mem 26) (cl Ar mem 27) ∧
  (cl Ar mem 35).toNat < 2 ^ 28 ∧
  Hooks.SubArr Γ (cl Ar mem 34) (cl Ar mem 35).toNat Types.tAUTH 120

def ETz (Ar : BitVec 64) (b27 b35 : Bool) : Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ _ mem _ => TF Ar Γ mem ∧ (b27 = true → cl Ar mem 27 = 0) ∧ (b35 = true → cl Ar mem 35 = 0)

theorem blkcell {Ar : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) {k : Nat}
    (hk : 8 * k + 8 ≤ 400) : Overlap Ar.toNat 400 (Ar + BitVec.ofNat 64 (8 * k)) := by
  have hse := heapEnd_lt64
  have e := tnl Ar (8 * k) (by omega)
  exact ⟨by rw [e]; omega, by rw [e]; omega, by rw [e]; omega⟩

theorem txrSubArrExt {Γ Γ' : Gam} (he : Ext Γ Γ') {P : BitVec 64} {n t sz : Nat}
    (h : Hooks.SubArr Γ P n t sz) : Hooks.SubArr Γ' P n t sz := by
  rcases h with h | ⟨x, hx, hb, ht, hs, hend⟩
  · exact Or.inl h
  · obtain ⟨o', ho', hb', ht', hsz⟩ := he x hx
    exact Or.inr ⟨o', ho', hb'.trans hb, ht'.trans ht, le_trans hs hsz, hend⟩

theorem pk_cell_info {Γ : Gam} {ap an : BitVec 64} (h : Hooks.SubArr Γ ap an.toNat Types.tACC 24)
    {j : Nat} (hj : j < an.toNat) :
    ∃ x ∈ Γ, x.HasSlot (3 * j + 2) ∧ ap + BitVec.ofNat 64 (24 * j + 16) = x.cell (3 * j + 2) ∧
      (Types.guestC.ty x.ty).slot (3 * j + 2) = .prot ∧ InObj Γ (x.cell (3 * j + 2)).toNat := by
  obtain ⟨x, hx, hb, ht, hslot, hc, h1, h2⟩ := Hooks.sub_cell h (by omega) (k := 3 * j + 2)
    (by have : 8 * (3 * j + 2) + 8 = 24 * (j + 1) := by omega
        rw [this]; exact Nat.mul_le_mul_left 24 hj)
  refine ⟨x, hx, hslot, ?_, ?_, ⟨x, hx, h1, h2⟩⟩
  · rw [Hooks.acc_cell, hb]
  · rw [ht]; exact Hooks.acc_prot _

theorem coa_prot_keep {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} (co : COutA a sg' vs Γ Γ' q q' s st) (hArg : ∀ x, ¬ ArgCells sg'.params vs x)
    {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) (hp : (a.Cb.ty o.ty).slot k = .prot) :
    st.memory (o.cell k) = s.memory (o.cell k) := by
  obtain ⟨p, hp0, hord, hL, -⟩ := co.heap0.1
  have hnotw : ¬ WCell a.Cb Γ (o.cell k) := by
    rintro ⟨o', ho', k', hk', hnp, he⟩
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
    exact hnp hp
  have hq : q = p := Option.some.inj (co.heap0.2.1.symm.trans hp0)
  subst hq
  exact co.frame _ hnotw (hArg _) (Struct.cell_alloc hord hL ho hk)

theorem pk_call {a : Act σ} (hCb : a.Cb = Types.guestC) {sg' : Sig} {vs : List (ValueHOL 64)}
    {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} (co : COutA a sg' vs Γ Γ' q q' s st)
    (hArg : ∀ x, ¬ ArgCells sg'.params vs x) {ap an : BitVec 64} (h : Pk Γ s.memory ap an) :
    Pk Γ' st.memory ap an := by
  obtain ⟨h1, h2, h3⟩ := h
  refine ⟨h1, txrSubArrExt co.ext h2, fun j hj => ?_⟩
  obtain ⟨x, hx, hs, hc, hprot, -⟩ := pk_cell_info h2 hj
  have := coa_prot_keep co hArg hx hs (by rw [hCb]; exact hprot)
  rw [hc, rd_congr this]
  rw [← hc]
  exact h3 j hj

theorem pk_store {Γ : Gam} {q : Ptrs} {mem mem' : Mem} {Ar : BitVec 64} {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R mem mem') (hR : ∀ y, R y → Overlap Ar.toNat 400 y)
    (hB : BlkF Ar 400 Γ q) {ap an : BitVec 64} (h : Pk Γ mem ap an) : Pk Γ mem' ap an := by
  obtain ⟨h1, h2, h3⟩ := h
  refine ⟨h1, h2, fun j hj => ?_⟩
  obtain ⟨x, hx, hs, hc, hprot, hin⟩ := pk_cell_info h2 hj
  have hnR : ¬ R (ap + BitVec.ofNat 64 (24 * j + 16)) := fun hr => by
    rw [hc] at hr
    exact (hB _ (hR _ hr)).1 hin
  rw [rd_congr (hmod _ hnR)]
  exact h3 j hj

theorem cl_keep {mem mem' : Mem} {Ar : BitVec 64} {j len f : Nat}
    (hmod : ModifiesOnly (fun y => ∃ i, i < len ∧ y = Ar + BitVec.ofNat 64 (8 * (j + i))) mem mem')
    (hf : f < j ∨ j + len ≤ f) (hf50 : f ≤ 50) (hjl : j + len ≤ 50) : cl Ar mem' f = cl Ar mem f := by
  unfold cl
  refine rd_congr (hmod _ ?_)
  rintro ⟨i, hi, he⟩
  have := ofN_inj Ar (a := 8 * f) (b := 8 * (j + i)) (by omega) (by omega) he
  omega

theorem pk_zero {Γ : Gam} {mem : Mem} {ap an : BitVec 64} (h : an = 0) : Pk Γ mem ap an := by
  subst h
  exact ⟨by simp, Or.inl (by simp), fun j hj => absurd hj (by simp)⟩

theorem tf_store {Γ : Gam} {q : Ptrs} {mem mem' : Mem} {Ar : BitVec 64} {j len : Nat}
    (hj : j + len ≤ 50) (hf : ∀ f ∈ txFacts, f < j ∨ j + len ≤ f)
    (hmod : ModifiesOnly (fun y => ∃ i, i < len ∧ y = Ar + BitVec.ofNat 64 (8 * (j + i))) mem mem')
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (hB : BlkF Ar 400 Γ q)
    (h : TF Ar Γ mem) : TF Ar Γ mem' := by
  have e25 := cl_keep hmod (hf 25 (by simp [txFacts])) (by omega) hj
  have e26 := cl_keep hmod (hf 26 (by simp [txFacts])) (by omega) hj
  have e27 := cl_keep hmod (hf 27 (by simp [txFacts])) (by omega) hj
  have e33 := cl_keep hmod (hf 33 (by simp [txFacts])) (by omega) hj
  have e34 := cl_keep hmod (hf 34 (by simp [txFacts])) (by omega) hj
  have e35 := cl_keep hmod (hf 35 (by simp [txFacts])) (by omega) hj
  obtain ⟨h25, h33, hP, h35, hA⟩ := h
  unfold TF
  rw [e25, e26, e27, e33, e34, e35]
  refine ⟨h25, h33, pk_store hmod ?_ hB hP, h35, hA⟩
  rintro y ⟨i, hi, rfl⟩
  exact blkcell hAr (by omega)

/-- `memzero` leaves every aligned cell of the block `0`: all facts hold. -/
theorem tf_zero {Γ : Gam} {mem : Mem} {Ar : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hz : ∀ j, j % 8 = 0 → j < 400 → mem (Ar + BitVec.ofNat 64 j) = .word 0) :
    TF Ar Γ mem ∧ cl Ar mem 27 = 0 ∧ cl Ar mem 35 = 0 := by
  have hc : ∀ k, 8 * k + 8 ≤ 400 → cl Ar mem k = 0 := fun k hk => by
    unfold cl rd
    rw [hz (8 * k) (by omega) (by omega)]
  have c25 := hc 25 (by norm_num)
  have c26 := hc 26 (by norm_num)
  have c27 := hc 27 (by norm_num)
  have c33 := hc 33 (by norm_num)
  have c34 := hc 34 (by norm_num)
  have c35 := hc 35 (by norm_num)
  refine ⟨?_, c27, c35⟩
  unfold TF
  rw [c25, c26, c27, c33, c34, c35]
  exact ⟨by simp, by simp, pk_zero rfl, by simp, Or.inl (by simp)⟩

theorem tf_call {a : Act σ} (hCb : a.Cb = Types.guestC) {sg' : Sig} {vs : List (ValueHOL 64)}
    {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {Ar : BitVec 64}
    (co : COutA a sg' vs Γ Γ' q q' s st) (hArg : ∀ x, ¬ ArgCells sg'.params vs x)
    (hB : BlkF Ar 400 Γ q) (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (h : TF Ar Γ s.memory) : TF Ar Γ' st.memory ∧ ∀ k, 8 * k + 8 ≤ 400 → cl Ar st.memory k = cl Ar s.memory k := by
  have hk : ∀ k, 8 * k + 8 ≤ 400 → cl Ar st.memory k = cl Ar s.memory k := fun k hk => by
    have hov := blkcell hAr hk
    obtain ⟨h1, h2⟩ := hB _ hov
    exact rd_congr (co.frame _ (fun hw => h1 (wcell_inObj co.heap0 hw)) (hArg _) h2)
  refine ⟨?_, hk⟩
  obtain ⟨h25, h33, hP, h35, hA⟩ := h
  unfold TF
  rw [hk 25 (by norm_num), hk 26 (by norm_num), hk 27 (by norm_num), hk 33 (by norm_num),
    hk 34 (by norm_num), hk 35 (by norm_num)]
  exact ⟨h25, h33, pk_call hCb co hArg hP, h35, txrSubArrExt co.ext hA⟩

/-! ## Keeping `E` -/

def StoreKeep (Ar : BitVec 64) (E : Gam → Ptrs → Mem → LocalsH → Prop) : Prop :=
  (Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) →
  ∀ (Γ : Gam) (q : Ptrs) (mem mem' : Mem) (g : LocalsH) (j len : Nat), j + len ≤ 50 →
    (∀ f ∈ txFacts, f < j ∨ j + len ≤ f) →
    ModifiesOnly (fun y => ∃ i, i < len ∧ y = Ar + BitVec.ofNat 64 (8 * (j + i))) mem mem' →
    BlkF Ar 400 Γ q → E Γ q mem g → E Γ q mem' g

def CallKeep (a : Act σ) (Ar : BitVec 64) (E : Gam → Ptrs → Mem → LocalsH → Prop) : Prop :=
  (Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) →
  ∀ (sg' : Sig) (vs : List (ValueHOL 64)) (Γ Γ' : Gam) (q q' : Ptrs) (s st : State σ) (g g' : LocalsH),
    COutA a sg' vs Γ Γ' q q' s st → (∀ x, ¬ ArgCells sg'.params vs x) → BlkF Ar 400 Γ q →
    E Γ q s.memory g → E Γ' q' st.memory g'

theorem etz_store {Ar : BitVec 64} (b27 b35 : Bool) : StoreKeep Ar (ETz Ar b27 b35) := by
  intro hAr Γ q mem mem' g j len hj hf hmod hB ⟨h, h27, h35⟩
  refine ⟨tf_store hj hf hmod hAr hB h, fun hb => ?_, fun hb => ?_⟩
  · rw [cl_keep hmod (hf 27 (by simp [txFacts])) (by omega) hj]; exact h27 hb
  · rw [cl_keep hmod (hf 35 (by simp [txFacts])) (by omega) hj]; exact h35 hb

theorem etz_call {a : Act σ} (hCb : a.Cb = Types.guestC) {Ar : BitVec 64} (b27 b35 : Bool) :
    CallKeep a Ar (ETz Ar b27 b35) := by
  intro hAr sg' vs Γ Γ' q q' s st g g' co hArg hB ⟨h, h27, h35⟩
  obtain ⟨hT, hk⟩ := tf_call hCb co hArg hB hAr h
  refine ⟨hT, fun hb => ?_, fun hb => ?_⟩
  · rw [hk 27 (by norm_num)]; exact h27 hb
  · rw [hk 35 (by norm_num)]; exact h35 hb

/-- `ETz Ar true true` with the `TO` cell (19) still zero: the invariant from the `memzero` to the slice array. -/
def EZ (Ar : BitVec 64) : Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem g => ETz Ar true true Γ q mem g ∧ cl Ar mem 19 = 0

theorem ez_store {Ar : BitVec 64} : StoreKeep Ar (EZ Ar) := by
  intro hAr Γ q mem mem' g j len hj hf hmod hB ⟨h, h19⟩
  refine ⟨etz_store true true hAr Γ q mem mem' g j len hj hf hmod hB h, ?_⟩
  rw [cl_keep hmod (hf 19 (by simp [txFacts])) (by omega) hj]; exact h19

theorem ez_call {a : Act σ} (hCb : a.Cb = Types.guestC) {Ar : BitVec 64} : CallKeep a Ar (EZ Ar) := by
  intro hAr sg' vs Γ Γ' q q' s st g g' co hArg hB ⟨h, h19⟩
  refine ⟨etz_call hCb true true hAr sg' vs Γ Γ' q q' s st g g' co hArg hB h, ?_⟩
  obtain ⟨-, hk⟩ := tf_call hCb co hArg hB hAr h.1
  rw [hk 19 (by norm_num)]; exact h19

end InitECandidate.Solver.MemSafe.Rec
