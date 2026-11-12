import InitECandidate.Solver.MemSafe.Dn.Store

set_option autoImplicit false

/-!
# `_decode_step`: the record tails

`dsExtRec_G` / `dsBrRec_G`: the stores into a fresh 88-byte scratch record and the return
`<1, rec>`, establishing `DsRx` (kind at `+8`; for a branch the `NBRANCH` object at `+16` and slot
`0` at `+32`).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

/-- The return predicate of `_decode_step`. -/
def RvDS (a : Act σ) : Gam → Ptrs → Mem → ValueHOL 64 → Prop :=
  fun Γ q M v => RetOK Γ a.p0 q a.vs a.sg.ret v ∧ DsRx a.vs a.p0 Γ q M v

/-- The record at `R`: aligned, in range, outside `Γ`, fresh since the entry, allocated now. -/
def FrE (a : Act σ) (R : BitVec 64) (Γ : Gam) (q : Ptrs) : Prop :=
  R.toNat % 8 = 0 ∧ R.toNat + 88 < 2 ^ 64 ∧ ∀ y : BitVec 64, Overlap R.toNat 88 y →
    ¬ InObj Γ y.toNat ∧ ¬ a.p0.Allocated y.toNat ∧ q.Allocated y.toNat

def IsW (m : LocalsH) (x : MlS) : Prop := ∃ W : BitVec 64, m.lookup x = some (.val (.word W))

theorem addk_ne {R : BitVec 64} {i j : Nat} (h : R.toNat + 88 < 2 ^ 64) (hi : i < 88) (hj : j < 88)
    (hij : i ≠ j) : R + BitVec.ofNat 64 i ≠ R + BitVec.ofNat 64 j := by
  intro e
  have := congrArg BitVec.toNat e
  rw [Spec.Mpt.Dec.toNat_add_lt (by omega), Spec.Mpt.Dec.toNat_add_lt (by omega)] at this
  omega

theorem isW_ev {s : State σ} {x : MlS} (h : IsW s.locals x) :
    ∀ v, ev s (lv x) = some v → ∃ V, v = .val (.word V) := by
  obtain ⟨W, hW⟩ := h
  intro v hv
  rw [ev_lv, hW] at hv
  exact ⟨W, (Option.some.inj hv).symm⟩

theorem rf3_ev {s : State σ} {x : MlS} {i : Nat} (hi : i < 3)
    (h : ∃ c0 c1 c2 : BitVec 64, s.locals.lookup x =
      some (.rStruct [.val (.word c0), .val (.word c1), .val (.word c2)])) :
    ∀ v, ev s (.rfield i (lv x)) = some v → ∃ V, v = .val (.word V) := by
  obtain ⟨c0, c1, c2, hx⟩ := h
  intro v hv
  interval_cases i
  · rw [Spec.Mpt.Dec.ev_rfield_w hx rfl] at hv; exact ⟨c0, (Option.some.inj hv).symm⟩
  · rw [Spec.Mpt.Dec.ev_rfield_w hx rfl] at hv; exact ⟨c1, (Option.some.inj hv).symm⟩
  · rw [Spec.Mpt.Dec.ev_rfield_w hx rfl] at hv; exact ⟨c2, (Option.some.inj hv).symm⟩

/-- The return `<1, rec>` of a record whose kind cell is `1`. -/
theorem dsRx_ext {a : Act σ} {R : BitVec 64} {Γ : Gam} {q : Ptrs} {M : Mem} (hF : FrE a R Γ q)
    (hH : heapEnd ≤ R.toNat) (hk : rd M (R + 8) = 1) (hS : RecS Γ q M R)
    {vs' : List (ValueHOL 64)} :
    DsRx a.vs a.p0 Γ q M (.rStruct (.val (.word (BitVec.ofNat 64 1)) :: .val (.word R) :: vs')) := by
  intro d0 d1 hv
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq] at hv
  obtain ⟨h0, h1, -⟩ := hv
  subst h0 h1
  exact ⟨fun h => absurd h (by decide), fun _ => ⟨hF.1, hH, fun y hy => hF.2.2 y hy,
    fun h => absurd hk h, hS⟩⟩

theorem cw_word (s : State σ) (k : Nat) :
    ∀ v, ev s (cw k) = some v → ∃ V, v = .val (.word V) :=
  fun v hv => ⟨BitVec.ofNat 64 k, by rw [ev_cw] at hv; exact (Option.some.inj hv).symm⟩

theorem cw_val {s : State σ} {k : Nat} {V : BitVec 64} (h : ev s (cw k) = some (.val (.word V))) :
    V = BitVec.ofNat 64 k := by
  rw [ev_cw] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  exact h.symm

theorem lv_val {s : State σ} {x : MlS} {W V : BitVec 64} (hx : s.locals.lookup x = some (.val (.word W)))
    (h : ev s (lv x) = some (.val (.word V))) : V = W := by
  rw [ev_lv, hx] at h
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
  exact h.symm

theorem rd_keep {M : Mem} {R V : BitVec 64} {i k : Nat} (hR : R.toNat + 88 < 2 ^ 64) (hi : i < 88)
    (hk : k < 88) (hik : i ≠ k) :
    rd (Struct.upd M (R + BitVec.ofNat 64 k) V) (R + BitVec.ofNat 64 i) = rd M (R + BitVec.ofNat 64 i) :=
  Struct.rd_upd_ne (addk_ne hR hi hk hik)

/-- **A store into the scratch record**, keeping the entry slice, the slice array and a cell predicate. -/
theorem gp_stRecX {a : Act σ} (ha : ActOK a guestCtx) {L : LocalsH → Prop} {Eb : Gam → Ptrs → Prop}
    {Ar P N : BitVec 64} {cnt : Nat} {Pm Pm' : Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} {x : MlS} {k : Nat} {e : ExpHOL 64} {R V : BitVec 64}
    (hx : ∀ m, L m → m.lookup x = some (.val (.word R))) (hk : k + 8 ≤ 88) (hk8 : k % 8 = 0)
    (hbase : ∀ Γ q, Eb Γ q → FrE a R Γ q ∧ heapEnd ≤ R.toNat)
    (hev : ∀ s : State σ, L s.locals → ev s e = some (.val (.word V)))
    (hP : ∀ M, R.toNat + 88 < 2 ^ 64 → Pm M → Pm' (Struct.upd M (R + BitVec.ofNat 64 k) V)) :
    HoareG σ guestCtx (GI a L (fun Γ q M => Eb Γ q ∧ EA P N Ar cnt Γ q M ∧ Pm M))
      (.store (.op .add [lv x, cw k]) e)
      (GP a L (fun Γ q M => Eb Γ q ∧ EA P N Ar cnt Γ q M ∧ Pm' M) Rv) := by
  refine gp_stFr ha (E' := fun Γ q M => Eb Γ q ∧ EA P N Ar cnt Γ q M ∧ Pm' M) hx hk hk8
    (fun Γ q M h => ⟨(hbase Γ q h.1).1.1, (hbase Γ q h.1).1.2.1,
      fun y hy => ⟨((hbase Γ q h.1).1.2.2 y hy).1, ((hbase Γ q h.1).1.2.2 y hy).2.1⟩⟩)
    (fun s v hL hv => ⟨V, by rw [hev s hL] at hv; exact (Option.some.inj hv).symm⟩)
    (fun s Γ q V' hL hE hv' => ?_)
  have hVV : V' = V := by
    rw [hev s hL] at hv'
    simpa using hv'.symm
  subst hVV
  have hb := hbase Γ q hE.1
  have hR88 := hb.1.2.1
  refine ⟨hE.1, ea_upd hE.2.1 ?_, hP _ hR88 hE.2.2⟩
  rw [Spec.Mpt.Dec.toNat_add_lt (by omega)]
  have := hb.2
  omega

theorem recS_ext {R P N Ar c0 c1 : BitVec 64} {Γ : Gam} {q : Ptrs} {M : Mem}
    (h8 : rd M (R + 8) = 1) (h24 : rd M (R + 24) = Ar) (h48 : rd M (R + 48) = P)
    (h56 : rd M (R + 56) = N) (h64 : rd M (R + 64) = c0) (h72 : rd M (R + 72) = c1)
    (hA : EA P N Ar 2 Γ q M) (hN : Hooks.NIn Γ c0 c1) : RecS Γ q M R := by
  unfold RecS
  rw [h8, h24, h48, h56, h64, h72]
  refine ⟨hA.1.2.2, ?_, fun _ => hN⟩
  simpa using hA.2

theorem recS_br {R P N Ar : BitVec 64} {Γ : Gam} {q : Ptrs} {M : Mem}
    (h8 : rd M (R + 8) = 2) (h24 : rd M (R + 24) = Ar) (h48 : rd M (R + 48) = P)
    (h56 : rd M (R + 56) = N) (hA : EA P N Ar 17 Γ q M) : RecS Γ q M R := by
  unfold RecS
  have hne : ¬ (rd M (R + 8) = 1) := by rw [h8]; decide
  rw [h24, h48, h56]
  refine ⟨hA.1.2.2, ?_, fun h => absurd h hne⟩
  rw [if_neg hne]
  exact hA.2

/-- The extension record's locals. -/
def LRec (R P N Ar c0 c1 c2 : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "rec") = some (.val (.word R)) ∧ m.lookup (nm "arr") = some (.val (.word Ar)) ∧
    m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N)) ∧
    m.lookup (nm "cn") = some (.rStruct [.val (.word c0), .val (.word c1), .val (.word c2)])

/-- The memory-free facts of the extension record. -/
def EbX (a : Act σ) (R : BitVec 64) (c0 c1 : BitVec 64) (Γ : Gam) (q : Ptrs) : Prop :=
  FrE a R Γ q ∧ heapEnd ≤ R.toNat ∧ Hooks.NIn Γ c0 c1

/-- **The extension record** (`dsExtRec`). -/
theorem dsExtRec_G {a : Act σ} (ha : ActOK a guestCtx) (hret : a.sg.ret = []) {R P N Ar c0 c1 c2 : BitVec 64}
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} :
    HoareG σ guestCtx (GI a (LRec R P N Ar c0 c1 c2)
      (fun Γ q M => EbX a R c0 c1 Γ q ∧ EA P N Ar 2 Γ q M))
      Spec.Mpt.Dec.dsExtRec (GP a L2 E2 (RvDS a)) := by
  unfold Spec.Mpt.Dec.dsExtRec Spec.Mpt.Dec.stk
  have hbase : ∀ Γ q, EbX a R c0 c1 Γ q → FrE a R Γ q ∧ heapEnd ≤ R.toNat := fun Γ q h => ⟨h.1, h.2.1⟩
  refine hoareG_pre (P := GI a (LRec R P N Ar c0 c1 c2)
      (fun Γ q M => EbX a R c0 c1 Γ q ∧ EA P N Ar 2 Γ q M ∧ (fun _ => True) M)) ?_
    (fun s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, hE.1, hE.2, trivial⟩)
  refine gp_seq (gp_stRecX ha (Pm := (fun _ => True)) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1))) (k := 8) (e := cw 1) (V := (BitVec.ofNat 64 1))
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_cw s 1) (fun M h88 hold => by rw [Struct.rd_upd_self])) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1))) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1) ∧ rd M (R + BitVec.ofNat 64 24) = Ar)) (k := 24) (e := lv (nm "arr")) (V := Ar)
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_lw hL.2.1) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1) ∧ rd M (R + BitVec.ofNat 64 24) = Ar)) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1) ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 48) = P)) (k := 48) (e := lv (nm "p")) (V := P)
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_lw hL.2.2.1) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1) ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 48) = P)) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1) ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 48) = P ∧ rd M (R + BitVec.ofNat 64 56) = N)) (k := 56) (e := lv (nm "n")) (V := N)
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_lw hL.2.2.2.1) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1) ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 48) = P ∧ rd M (R + BitVec.ofNat 64 56) = N)) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1) ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 48) = P ∧ rd M (R + BitVec.ofNat 64 56) = N ∧ rd M (R + BitVec.ofNat 64 64) = c0)) (k := 64) (e := .rfield 0 (lv (nm "cn"))) (V := c0)
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => Spec.Mpt.Dec.ev_rfield_w (i := 0) hL.2.2.2.2 rfl) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.2, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1) ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 48) = P ∧ rd M (R + BitVec.ofNat 64 56) = N ∧ rd M (R + BitVec.ofNat 64 64) = c0)) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 1) ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 48) = P ∧ rd M (R + BitVec.ofNat 64 56) = N ∧ rd M (R + BitVec.ofNat 64 64) = c0 ∧ rd M (R + BitVec.ofNat 64 72) = c1)) (k := 72) (e := .rfield 1 (lv (nm "cn"))) (V := c1)
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => Spec.Mpt.Dec.ev_rfield_w (i := 1) hL.2.2.2.2 rfl) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.2.2, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ⟨by rw [hret]; exact retOK_nil, ?_⟩)
  obtain ⟨vs', rfl⟩ := ev_rstruct_hd2 hv (ev_cw s 1) (by rw [ev_lv]; exact hL.1)
  obtain ⟨⟨hF, hH, hN⟩, hA, h8, h24, h48, h56, h64, h72⟩ := hE
  exact dsRx_ext hF hH h8 (recS_ext h8 h24 h48 h56 h64 h72 hA hN)

/-- The branch record's locals. -/
def LBr (R BR P N Ar : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "rec2") = some (.val (.word R)) ∧ m.lookup (nm "br") = some (.val (.word BR)) ∧
    m.lookup (nm "arr") = some (.val (.word Ar)) ∧ m.lookup (nm "p") = some (.val (.word P)) ∧
    m.lookup (nm "n") = some (.val (.word N))

/-- The new branch node: an `NBRANCH` object of `Γ`, unallocated at the entry. -/
def BrO (p0 : Ptrs) (Γ : Gam) (BR : BitVec 64) : Prop :=
  ∃ o ∈ Γ, o.base = BR ∧ o.ty = Types.tNBRANCH ∧
    ∀ x : BitVec 64, Overlap BR.toNat 176 x → ¬ p0.Allocated x.toNat

/-- The memory-free facts of the branch record. -/
def EbB (a : Act σ) (R BR : BitVec 64) (Γ : Gam) (q : Ptrs) : Prop :=
  FrE a R Γ q ∧ heapEnd ≤ R.toNat ∧ BrO a.p0 Γ BR

theorem dsRx_br {a : Act σ} {R BR : BitVec 64} {Γ : Gam} {q : Ptrs} {M : Mem} (hF : FrE a R Γ q)
    (hH : heapEnd ≤ R.toNat) (hO : BrO a.p0 Γ BR) (h8 : rd M (R + BitVec.ofNat 64 8) = 2)
    (h16 : rd M (R + BitVec.ofNat 64 16) = BR) (h32 : rd M (R + BitVec.ofNat 64 32) = 0)
    (hS : RecS Γ q M R) {vs' : List (ValueHOL 64)} :
    DsRx a.vs a.p0 Γ q M (.rStruct (.val (.word (BitVec.ofNat 64 1)) :: .val (.word R) :: vs')) := by
  intro d0 d1 hv
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq] at hv
  obtain ⟨h0, h1, -⟩ := hv
  subst h0 h1
  refine ⟨fun h => absurd h (by decide), fun _ => ⟨hF.1, hH, fun y hy => hF.2.2 y hy, fun _ => ?_, hS⟩⟩
  obtain ⟨o, ho, hb, ht, hfr⟩ := hO
  exact ⟨⟨o, ho, by rw [hb]; exact h16.symm, ht, by rw [hb]; exact hfr⟩, h32⟩

/-- **The branch record** (`dsBrRec`). -/
theorem dsBrRec_G {a : Act σ} (ha : ActOK a guestCtx) (hret : a.sg.ret = []) {R BR P N Ar : BitVec 64}
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} :
    HoareG σ guestCtx (GI a (LBr R BR P N Ar)
      (fun Γ q M => EbB a R BR Γ q ∧ EA P N Ar 17 Γ q M))
      Spec.Mpt.Dec.dsBrRec (GP a L2 E2 (RvDS a)) := by
  unfold Spec.Mpt.Dec.dsBrRec Spec.Mpt.Dec.stk
  have hbase : ∀ Γ q, EbB a R BR Γ q → FrE a R Γ q ∧ heapEnd ≤ R.toNat := fun Γ q h => ⟨h.1, h.2.1⟩
  refine hoareG_pre (P := GI a (LBr R BR P N Ar)
      (fun Γ q M => EbB a R BR Γ q ∧ EA P N Ar 17 Γ q M ∧ (fun _ => True) M)) ?_
    (fun s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, hE.1, hE.2, trivial⟩)
  refine gp_seq (gp_stRecX ha (Pm := (fun _ => True)) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2))) (k := 8) (e := cw 2) (V := (BitVec.ofNat 64 2))
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_cw s 2) (fun M h88 hold => by rw [Struct.rd_upd_self])) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2))) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR)) (k := 16) (e := lv (nm "br")) (V := BR)
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_lw hL.2.1) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR)) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR ∧ rd M (R + BitVec.ofNat 64 24) = Ar)) (k := 24) (e := lv (nm "arr")) (V := Ar)
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_lw hL.2.2.1) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR ∧ rd M (R + BitVec.ofNat 64 24) = Ar)) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 32) = (BitVec.ofNat 64 0))) (k := 32) (e := cw 0) (V := (BitVec.ofNat 64 0))
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_cw s 0) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 32) = (BitVec.ofNat 64 0))) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 32) = (BitVec.ofNat 64 0) ∧ rd M (R + BitVec.ofNat 64 40) = (BitVec.ofNat 64 0))) (k := 40) (e := cw 0) (V := (BitVec.ofNat 64 0))
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_cw s 0) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.2, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 32) = (BitVec.ofNat 64 0) ∧ rd M (R + BitVec.ofNat 64 40) = (BitVec.ofNat 64 0))) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 32) = (BitVec.ofNat 64 0) ∧ rd M (R + BitVec.ofNat 64 40) = (BitVec.ofNat 64 0) ∧ rd M (R + BitVec.ofNat 64 48) = P)) (k := 48) (e := lv (nm "p")) (V := P)
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_lw hL.2.2.2.1) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.2.2, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_seq (gp_stRecX ha (Pm := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 32) = (BitVec.ofNat 64 0) ∧ rd M (R + BitVec.ofNat 64 40) = (BitVec.ofNat 64 0) ∧ rd M (R + BitVec.ofNat 64 48) = P)) (Pm' := (fun M => rd M (R + BitVec.ofNat 64 8) = (BitVec.ofNat 64 2) ∧ rd M (R + BitVec.ofNat 64 16) = BR ∧ rd M (R + BitVec.ofNat 64 24) = Ar ∧ rd M (R + BitVec.ofNat 64 32) = (BitVec.ofNat 64 0) ∧ rd M (R + BitVec.ofNat 64 40) = (BitVec.ofNat 64 0) ∧ rd M (R + BitVec.ofNat 64 48) = P ∧ rd M (R + BitVec.ofNat 64 56) = N)) (k := 56) (e := lv (nm "n")) (V := N)
      (fun m hL => hL.1) (by decide) (by decide) hbase
      (fun s hL => ev_lw hL.2.2.2.2) (fun M h88 hold => ⟨by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.2.2.1, by rw [rd_keep h88 (by decide) (by decide) (by decide)]; exact hold.2.2.2.2.2, by rw [Struct.rd_upd_self]⟩)) ?_
  refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ⟨by rw [hret]; exact retOK_nil, ?_⟩)
  obtain ⟨vs', rfl⟩ := ev_rstruct_hd2 hv (ev_cw s 1) (by rw [ev_lv]; exact hL.1)
  obtain ⟨⟨hF, hH, hO⟩, hA, h8, h16, h24, h32, h40, h48, h56⟩ := hE
  exact dsRx_br hF hH hO h8 h16 h32 (recS_br h8 h24 h48 h56 hA)

theorem ctor_leaf_sp : ctorNames.contains (nm "node_new_leaf") = true := by decide_cbv
theorem ctor_branch_sp : ctorNames.contains (nm "node_new_branch") = true := by decide_cbv

/-- The leaf path's locals after the call. -/
def LLf (m : LocalsH) : Prop := IsW m (nm "p") ∧ IsW m (nm "n")

/-- The leaf path's locals at entry: `cn` and `vi` are exact. -/
def LLfx (P N c0 c1 c2 va vb vc vd : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N)) ∧
    m.lookup (nm "cn") = some (.rStruct [.val (.word c0), .val (.word c1), .val (.word c2)]) ∧
    m.lookup (nm "vi") = some
      (.rStruct [.val (.word va), .val (.word vb), .val (.word vc), .val (.word vd)])

theorem isW_set {s : State σ} {x y : MlS} (h : IsW s.locals x) (hne : y ≠ x) (v : ValueHOL 64)
    (L : LocalsH) (hL : L = s.locals) :
    IsW (setVarHOLFinite y v { s with locals := L }).locals x := by
  obtain ⟨W, hW⟩ := h
  refine ⟨W, ?_⟩
  rw [lk_set_ne _ _ hne]
  show L.lookup x = _
  rw [hL]; exact hW

/-- A store into slot `j` (1 to 3) of a `nodeU` word. -/
theorem nodeU_slot {sg : Sig} {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0) Γ q s)
    {B : BitVec 64} (hB : Fits Γ Types.nodeU B) {j : Nat} (hj : 1 ≤ j ∧ j ≤ 3) :
    B.toNat < nullMax ∨ ∃ o ∈ Γ, o.base = B ∧ o.HasSlot j ∧
      ((actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg [] vs s0 Γ0 p0).Cb.ty o.ty).slot j =
        .scalar := by
  rcases nodeU_cases hB with h | ⟨o, ho, hb, ht⟩
  · exact Or.inl h
  · obtain ⟨p1, -, -, hL, -⟩ := hh.1
    have hsz : (Types.guestC.ty o.ty).minSz ≤ o.size := (hL.1 o ho).2.2.2.1
    obtain ⟨h1, h2⟩ := node_slot_ok ht hsz hj
    exact Or.inr ⟨o, ho, hb, h1, h2⟩

/-- **The leaf path** (`dsLeaf`): the leaf node, its two slice cells, `return <0, lf>`. -/
theorem dsLeaf_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) dsSig [] vs s0 Γ0 p0) guestCtx)
    {P N c0 c1 c2 va vb vc vd : BitVec 64}
    {E : Gam → Ptrs → Mem → Prop}
    (hEq : ∀ Γ q M, E Γ q M → Hooks.NIn Γ c0 c1 ∧ Hooks.VInR Types.tVAL Γ vb vc)
    {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC Hooks.guestHooksR dsSig [] vs s0 Γ0 p0)
        (LLfx P N c0 c1 c2 va vb vc vd) E)
      Spec.Mpt.Dec.dsLeaf
      (GP (actOf Types.guestC Hooks.guestHooksR dsSig [] vs s0 Γ0 p0) L2 E2
        (RvDS (actOf Types.guestC Hooks.guestHooksR dsSig [] vs s0 Γ0 p0))) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold Spec.Mpt.Dec.dsLeaf Spec.Mpt.Dec.stk
  refine gp_seq (L := LLfx P N c0 c1 c2 va vb vc vd) (E := E)
    (hoareG_ite (hoareG_pre (gp_fail ha 6) (fun s _ h => h.1)) (gp_skip (fun s h => h.1))) ?_
  refine gp_decCall ha node_new_leaf_guestR (ctor_sp hX ctor_leaf_sp)
    (by simp [Node.nlSig]) (fun _ => rfl)
    (L1 := fun v m => (∃ LF : BitVec 64, v = .val (.word LF)) ∧ m.lookup (nm "lf") = some v ∧ LLf m)
    (E1 := fun v Γ _ _ => ∀ w : BitVec 64, v = .val (.word w) → Fits Γ Types.nodeU w)
    (L2 := fun _ => False)
    (fun s Γ q _ hL _ hE vs1 hvs => by
      have h1 := anyArgsG (a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) dsSig [] vs s0 Γ0 p0)
        (sg' := Node.nlSig) (Γ := Γ) (q := q) (by simp [Node.nlSig]) (by simp [Node.nlSig]) hvs
      rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w (i := 0) hL.2.2.1 rfl)
        (evs_cons (Spec.Mpt.Dec.ev_rfield_w (i := 1) hL.2.2.1 rfl)
        (evs_cons (Spec.Mpt.Dec.ev_rfield_w (i := 1) hL.2.2.2 rfl)
        (evs_cons (Spec.Mpt.Dec.ev_rfield_w (i := 2) hL.2.2.2 rfl) evs_nil)))] at hvs
      cases hvs
      exact ⟨h1.1, h1.2, fun _ => ⟨c0, c1, vb, vc, rfl, (hEq Γ q _ hE).1, (hEq Γ q _ hE).2⟩⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ _ _ _ _ hLc _ co => ⟨scrOld_sp_co rfl co hLc,
      fun v hv _ w hw => by subst hw; exact co.ret _ hv 0 _ w rfl (by simp [flattenHOL])⟩)
    (fun s st v hL hsh => ⟨val_of_shapeEq_one' hsh, by simp [setVarHOLFinite, FUPDATE],
      isW_set ⟨P, hL.1⟩ (by decide) v _ rfl, isW_set ⟨N, hL.2.1⟩ (by decide) v _ rfl⟩)
    ?_ (fun _ _ _ h => h.elim)
  intro v
  by_cases hw : ∃ LF : BitVec 64, v = .val (.word LF)
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨LF, rfl⟩ := hw
  have hlf : ∀ m, ((∃ LF' : BitVec 64, ValueHOL.val (.word LF) = .val (.word LF')) ∧
      m.lookup (nm "lf") = some (.val (.word LF)) ∧ LLf m) →
      m.lookup (nm "lf") = some (.val (.word LF)) := fun m h => h.2.1
  refine gp_seq (gp_stSC ha (j := 1) (E' := fun Γ _ _ => ∀ w : BitVec 64,
      ValueHOL.val (.word LF) = .val (.word w) → Fits Γ Types.nodeU w) hlf (by decide)
    (fun s Γ q hh hE => nodeU_slot hh (hE LF rfl) ⟨le_refl _, by decide⟩)
    (fun s v hL hv => isW_ev hL.2.2.1 v hv) (fun s Γ q V _ hE _ => hE)) ?_
  refine gp_seq (gp_stSC ha (j := 2) (E' := fun Γ _ _ => ∀ w : BitVec 64,
      ValueHOL.val (.word LF) = .val (.word w) → Fits Γ Types.nodeU w) hlf (by decide)
    (fun s Γ q hh hE => nodeU_slot hh (hE LF rfl) ⟨by decide, by decide⟩)
    (fun s v hL hv => isW_ev hL.2.2.2 v hv) (fun s Γ q V _ hE _ => hE)) ?_
  refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ⟨retOK_nil, ?_⟩)
  obtain ⟨vs', rfl⟩ := ev_rstruct_hd2 hv (ev_cw s 0) (by rw [ev_lv]; exact hL.2.1)
  intro d0 d1 hv'
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq] at hv'
  obtain ⟨h0, h1, -⟩ := hv'
  subst h0 h1
  exact ⟨fun _ => hE LF rfl, fun h => absurd rfl h⟩

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.dsRx_ext
#print axioms InitECandidate.Solver.MemSafe.Dn.dsExtRec_G
#print axioms InitECandidate.Solver.MemSafe.Dn.dsBrRec_G
#print axioms InitECandidate.Solver.MemSafe.Dn.dsLeaf_G
