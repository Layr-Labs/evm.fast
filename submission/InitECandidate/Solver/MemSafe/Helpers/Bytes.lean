import InitECandidate.Solver.MemSafe.Helpers.Seq

set_option autoImplicit false

/-!
# Byte and word stores: `bswap64`, `st_le32`, `st_be32`, `st_le64`, `st_be64`, `u256_to_be32`

* `foot_bswap64`: `bswap64` writes no memory and no global (`FootSpec` with an empty footprint).
* `foot_st_le32` / `foot_st_be32` (4 bytes at `p`), `foot_st_le64` / `foot_st_be64` (8 bytes),
  `foot_u256_to_be32` (32 bytes at `out`): every good result keeps the globals and changes
  memory only in the cells overlapping the buffer, when the buffer ends below `scratchEnd`
  (`BufPreK`).
* `summ_*`: the `Summ`s for `[.buf 4, .any]`, `[.buf 8, .any]`, `[.any, .buf 32]` and, for
  `bswap64`, `[.any]` (all with `grows := false`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Constant-size buffer arguments -/

/-- The buffer argument `i` of constant size `n` ends below `scratchEnd`. -/
def BufPreK (i n : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs i = some D ∧ D.toNat + n ≤ scratchEnd

/-- The cells of the buffer argument `i` of constant size `n`. -/
def BufRK (i n : Nat) (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D : BitVec 64, argW vs i = some D ∧ Overlap D.toNat n a

theorem bufPreK_of_args {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    {i n : Nat} (hps : ps[i]? = some (.buf n)) (hn : 0 < n) (hord : p.Ordered)
    (hL : Layout C p Γ) (hA : ArgsOK C Γ p ps vs) : BufPreK i n vs := by
  have hlen : i < vs.length := by
    rw [← hA.1]
    exact (List.getElem?_eq_some_iff.mp hps).1
  obtain ⟨v, hv⟩ : ∃ v, vs[i]? = some v := ⟨_, List.getElem?_eq_getElem hlen⟩
  obtain ⟨w, hw, hb⟩ := hA.2 i _ v hps hv
  refine ⟨w, by rw [argW, hv]; exact hw, ?_⟩
  rcases bufOK_bound hord hL w.isLt hb with h | h
  · omega
  · exact h

theorem argCells_of_bufRK {ps : List PT} {vs : List (ValueHOL 64)} {i n : Nat}
    (hps : ps[i]? = some (.buf n)) {a : BitVec 64} (h : BufRK i n vs a) : ArgCells ps vs a := by
  obtain ⟨D, hD, hov⟩ := h
  exact ⟨i, D, hD, Or.inl ⟨n, hps, hov⟩⟩

/-- A one-buffer summary from a constant-size footprint spec. -/
theorem summ_of_footK {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    {f : MlS} {sg : Sig} (hret : sg.ret = []) {i n : Nat} (hps : sg.params[i]? = some (.buf n))
    (hn : 0 < n) (hf : FootSpec σ X f (BufPreK i n) (BufRK i n)) : Summ σ X C H f sg :=
  summ_of_foot hH hT hret hf (fun _ _ _ hord hL hA => bufPreK_of_args hps hn hord hL hA)
    (fun _ _ _ h => argCells_of_bufRK hps h)

theorem overlap_mono {b n b' n' : Nat} {a : BitVec 64} (h : Overlap b' n' a) (h1 : b ≤ b')
    (h2 : b' + n' ≤ b + n) : Overlap b n a := by
  unfold Overlap at h ⊢
  omega

/-! ## Names and syntax -/

def xN : MlS := nm "x"
def pN : MlS := nm "p"
def vN : MlS := nm "v"
def wN : MlS := nm "w"
def aN : MlS := nm "a"
def oN : MlS := nm "out"

def shr (e : ExpHOL 64) (k : Nat) : ExpHOL 64 := .shift .lsr e (cw k)
def ret0 : ProgHOL 64 := .return (cw 0)

/-! ## `bswap64` -/

def bswapStep (m k : Nat) : ExpHOL 64 :=
  .op .or [.shift .lsl (.op .and [lv xN, cw m]) (cw k), .op .and [.shift .lsr (lv xN) (cw k), cw m]]

def bswap64Body : ProgHOL 64 :=
  .seq (.assign .local xN (bswapStep 71777214294589695 8))
    (.seq (.assign .local xN (bswapStep 281470681808895 16))
      (.return (.op .or [.shift .lsl (lv xN) (cw 32), .shift .lsr (lv xN) (cw 32)])))

theorem entry_bswap64 : fnEntry Guest.Software.guestFn_bswap64 =
    (nm "bswap64", [(xN, .one)], bswap64Body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_bswap64 : guestCode (nm "bswap64") = some ([(xN, .one)], bswap64Body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 23) (by decide)) ⟨_, rfl⟩
    entry_bswap64

/-- The empty footprint. -/
def NoFoot (_ : List (ValueHOL 64)) (_ : BitVec 64) : Prop := False

theorem lpre_init {R : BitVec 64 → Prop} {L : Locals → Prop} {s0 : State σ} (h : L s0.locals) :
    LPre R s0 L s0 := ⟨h, rfl, fun _ _ => rfl⟩

theorem foot_bswap64 (hC : X.code.lookup = guestCode) :
    FootSpec σ X (nm "bswap64") (fun _ => True) NoFoot := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ _ _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -⟩ := lookupCode_one code_bswap64 hl
  refine hoareG_conseq (P := LPre (NoFoot vs) s0 (fun _ => True))
    (Q := LP (NoFoot vs) s0 (fun _ => True)) ?_ (fun t _ ht => by subst t; exact lpre_init trivial)
    fun _ _ _ _ h => h.1
  exact hoareG_seqL (L2 := fun _ => True) (hoareG_assignL fun _ _ _ _ _ => trivial)
    (hoareG_seqL (L2 := fun _ => True) (hoareG_assignL fun _ _ _ _ _ => trivial) hoareG_returnL)

def sigBswap64 : Sig := { params := [.any], grows := false }

theorem summ_bswap64 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) : Summ σ X C H (nm "bswap64") sigBswap64 :=
  summ_of_foot hH hT rfl (foot_bswap64 hC) (fun _ _ _ _ _ _ => trivial) (fun _ _ _ h => h.elim)

/-! ## `st_le32`, `st_be32` -/

def stLe32Body : ProgHOL 64 :=
  stSeq pN [(.b, 0, lv vN), (.b, 1, shr (lv vN) 8), (.b, 2, shr (lv vN) 16),
    (.b, 3, shr (lv vN) 24)] ret0

def stBe32Body : ProgHOL 64 :=
  stSeq pN [(.b, 0, shr (lv vN) 24), (.b, 1, shr (lv vN) 16), (.b, 2, shr (lv vN) 8),
    (.b, 3, lv vN)] ret0

def pvParams : List (MlS × ShapeHOL) := [(pN, .one), (vN, .one)]

theorem entry_st_le32 : fnEntry Guest.Software.guestFn_st_le32 =
    (nm "st_le32", pvParams, stLe32Body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_st_le32 : guestCode (nm "st_le32") = some (pvParams, stLe32Body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 25) (by decide)) ⟨_, rfl⟩
    entry_st_le32

theorem entry_st_be32 : fnEntry Guest.Software.guestFn_st_be32 =
    (nm "st_be32", pvParams, stBe32Body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_st_be32 : guestCode (nm "st_be32") = some (pvParams, stBe32Body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 27) (by decide)) ⟨_, rfl⟩
    entry_st_be32

/-- Byte stores at `p + c`, `c < 4`, then `return 0`: the 4-byte footprint. -/
theorem foot_bytes4 {f : MlS} {body : ProgHOL 64} {ss : List (SK × Nat × ExpHOL 64)}
    (hbody : body = stSeq pN ss ret0) (hss : ∀ x ∈ ss, x.1 = .b ∧ x.2.1 < 4)
    (hcode : guestCode f = some (pvParams, body, .one))
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X f (BufPreK 0 4) (BufRK 0 4) := by
  refine footSpec_of_hoareG fun vs bd callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', -, hla, -⟩ := lookupCode_two hcode (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨P', hP', hb⟩ := hP
  cases hP'
  have hse : scratchEnd < 2 ^ 63 := by decide
  subst hbody
  refine hoareG_conseq (P := LPre (BufRK 0 4 [.val (.word P), B]) s0
      (fun m => m.lookup pN = some (.val (.word P))))
    (Q := LP (BufRK 0 4 [.val (.word P), B]) s0 (fun _ => True)) ?_
    (fun t _ ht => by subst t; exact lpre_init (by rw [hloc]; exact hla)) fun _ _ _ _ h => h.1
  refine hoareG_stSeq hA (fun _ h => h) (by omega) (fun a h => ⟨P, rfl, h⟩) hoareG_returnL ?_
  intro x hx
  obtain ⟨h1, h2⟩ := hss x hx
  exact ⟨h2, fun h => by rw [h1] at h; cases h⟩

theorem foot_st_le32 (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "st_le32") (BufPreK 0 4) (BufRK 0 4) :=
  foot_bytes4 rfl (by simp) code_st_le32 hC hA

theorem foot_st_be32 (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "st_be32") (BufPreK 0 4) (BufRK 0 4) :=
  foot_bytes4 rfl (by simp) code_st_be32 hC hA

/-! ## `st_le64`, `st_be64` -/

def stLe64Body : ProgHOL 64 :=
  .seq (callD (nm "st_le32") [lv pN, lv vN])
    (.seq (callD (nm "st_le32") [offP pN 4, shr (lv vN) 32]) ret0)

def stBe64Body : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (.op .and [lv pN, cw 7]) (cw 0))
      (.decCall wN .one (nm "bswap64") [lv vN] (stSeq pN [(.w, 0, lv wN)] ret0)) .skip)
    (.seq (callD (nm "st_be32") [lv pN, shr (lv vN) 32])
      (.seq (callD (nm "st_be32") [offP pN 4, lv vN]) ret0))

theorem entry_st_le64 : fnEntry Guest.Software.guestFn_st_le64 =
    (nm "st_le64", pvParams, stLe64Body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_st_le64 : guestCode (nm "st_le64") = some (pvParams, stLe64Body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 26) (by decide)) ⟨_, rfl⟩
    entry_st_le64

theorem entry_st_be64 : fnEntry Guest.Software.guestFn_st_be64 =
    (nm "st_be64", pvParams, stBe64Body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_st_be64 : guestCode (nm "st_be64") = some (pvParams, stBe64Body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 28) (by decide)) ⟨_, rfl⟩
    entry_st_be64

/-- A call `g(p + c, e)` of a 4-byte writer, `c + 4 ≤ n`, inside the buffer `[P, P + n)`. -/
theorem callFoot4 {g : MlS} (hg : FootSpec σ X g (BufPreK 0 4) (BufRK 0 4)) {P : BitVec 64}
    {n c : Nat} (hc : c + 4 ≤ n) (hPn : P.toNat + n ≤ scratchEnd) {e : ExpHOL 64}
    {Rf : BitVec 64 → Prop} (hR : ∀ a, Overlap P.toNat n a → Rf a) {s0 : State σ}
    {L : Locals → Prop} (hLp : ∀ m, L m → m.lookup pN = some (.val (.word P))) :
    HoareG σ X (LPre Rf s0 L) (callD g [offP pN c, e]) (LP Rf s0 L) := by
  refine hoareG_callFoot hg fun t _ hpre vs hvs => ?_
  obtain ⟨v1, vs', rfl, h1, -⟩ := evs_cons_inv hvs
  rw [ev_offP (hLp _ hpre.1)] at h1
  cases h1
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hw : (P + BitVec.ofNat 64 c).toNat = P.toNat + c := toNat_addc (by omega)
  refine ⟨⟨_, rfl, by rw [hw]; omega⟩, fun a ⟨D, hD, hov⟩ => ?_⟩
  cases hD
  rw [hw] at hov
  exact hR a (overlap_mono hov (by omega) (by omega))

/-- An 8-byte writer from two 4-byte writer calls at `p` and `p + 4`. -/
theorem foot_bytes8 {f g : MlS} {body : ProgHOL 64} (hg : FootSpec σ X g (BufPreK 0 4) (BufRK 0 4))
    {e1 e2 : ExpHOL 64} (hbody : body = .seq (callD g [offP pN 0, e1]) (.seq (callD g [offP pN 4, e2]) ret0))
    (hcode : guestCode f = some (pvParams, body, .one)) (hC : X.code.lookup = guestCode) :
    FootSpec σ X f (BufPreK 0 8) (BufRK 0 8) := by
  refine footSpec_of_hoareG fun vs bd callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', -, hla, -⟩ := lookupCode_two hcode (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨P', hP', hb⟩ := hP
  cases hP'
  subst hbody
  refine hoareG_conseq (P := LPre (BufRK 0 8 [.val (.word P), B]) s0
      (fun m => m.lookup pN = some (.val (.word P))))
    (Q := LP (BufRK 0 8 [.val (.word P), B]) s0 (fun _ => True)) ?_
    (fun t _ ht => by subst t; exact lpre_init (by rw [hloc]; exact hla)) fun _ _ _ _ h => h.1
  have hR : ∀ a, Overlap P.toNat 8 a → BufRK 0 8 [.val (.word P), B] a := fun a h => ⟨P, rfl, h⟩
  exact hoareG_seqL (callFoot4 hg (by omega) hb hR fun _ h => h)
    (hoareG_seqL (callFoot4 hg (by omega) hb hR fun _ h => h) hoareG_returnL)

theorem foot_st_le64 (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "st_le64") (BufPreK 0 8) (BufRK 0 8) :=
  foot_bytes8 (foot_st_le32 hC hA) rfl code_st_le64 hC

theorem foot_st_be64 (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "st_be64") (BufPreK 0 8) (BufRK 0 8) := by
  refine footSpec_of_hoareG fun vs bd callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', -, hla, -⟩ := lookupCode_two code_st_be64 (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨P', hP', hb⟩ := hP
  cases hP'
  have hse : scratchEnd < 2 ^ 63 := by decide
  let Rf := BufRK 0 8 [.val (.word P), B]
  have hR : ∀ a, Overlap P.toNat 8 a → Rf a := fun a h => ⟨P, rfl, h⟩
  let Lp : Locals → Prop := fun m => m.lookup pN = some (.val (.word P))
  refine hoareG_conseq (P := LPre Rf s0 Lp) (Q := LP Rf s0 (fun _ => True)) ?_
    (fun t _ ht => by subst t; exact lpre_init (by rw [hloc]; exact hla)) fun _ _ _ _ h => h.1
  refine hoareG_seqL (L2 := Lp) ?_
    (hoareG_seqL (callFoot4 (c := 0) (foot_st_be32 hC hA) (by omega) hb hR fun _ h => h)
      (hoareG_seqL (callFoot4 (foot_st_be32 hC hA) (by omega) hb hR fun _ h => h)
        hoareG_returnL))
  refine hoareG_ite ?_ (hoareG_skip fun t _ h => ⟨h.1.2, fun _ => h.1.1, fun _ h => nomatch h⟩)
  refine hoareG_pre (P := LPre Rf s0 Lp) ?_ fun _ _ h => h.1
  refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_of_foot (foot_bswap64 hC))
    (fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩) ?_ (fun _ _ _ h => h.elim)
  intro s' _ v _ hm _ _ hsh
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hsh
  refine hoareG_stSeq (L' := fun _ => False) hA (P := P) (n := 8)
    (L := fun m' => m' = s'.locals.update (wN, .val (.word W))) (fun _ h => ?_) (by omega) hR
    hoareG_returnL ?_
  · rw [h, lookup_update_ne _ _ (by decide)]; exact hm
  · intro x hx
    simp only [List.mem_singleton] at hx
    subst hx
    refine ⟨by decide, fun _ => oneWordL_lv fun _ h => ⟨W, ?_⟩⟩
    rw [h]; exact lookup_update_self _ _ _

def sigSt4 : Sig := { params := [.buf 4, .any], grows := false }
def sigSt8 : Sig := { params := [.buf 8, .any], grows := false }

theorem summ_st_le32 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) : Summ σ X C H (nm "st_le32") sigSt4 :=
  summ_of_footK hH hT rfl (i := 0) rfl (by decide) (foot_st_le32 hC hA)

theorem summ_st_be32 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) : Summ σ X C H (nm "st_be32") sigSt4 :=
  summ_of_footK hH hT rfl (i := 0) rfl (by decide) (foot_st_be32 hC hA)

theorem summ_st_le64 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) : Summ σ X C H (nm "st_le64") sigSt8 :=
  summ_of_footK hH hT rfl (i := 0) rfl (by decide) (foot_st_le64 hC hA)

theorem summ_st_be64 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) : Summ σ X C H (nm "st_be64") sigSt8 :=
  summ_of_footK hH hT rfl (i := 0) rfl (by decide) (foot_st_be64 hC hA)

/-! ## `u256_to_be32` -/

def u256ToBe32Body : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (.op .and [lv oN, cw 7]) (cw 0))
      (.decCall wN .one (nm "bswap64") [.rfield 3 (lv aN)]
        (.seq (stP oN .w 0 (lv wN))
        (.seq (callTo wN (nm "bswap64") [.rfield 2 (lv aN)])
        (.seq (stP oN .w 8 (lv wN))
        (.seq (callTo wN (nm "bswap64") [.rfield 1 (lv aN)])
        (.seq (stP oN .w 16 (lv wN))
        (.seq (callTo wN (nm "bswap64") [.rfield 0 (lv aN)])
        (.seq (stP oN .w 24 (lv wN)) ret0))))))))
      .skip)
    (.seq (callD (nm "st_be64") [offP oN 0, .rfield 3 (lv aN)])
    (.seq (callD (nm "st_be64") [offP oN 8, .rfield 2 (lv aN)])
    (.seq (callD (nm "st_be64") [offP oN 16, .rfield 1 (lv aN)])
    (.seq (callD (nm "st_be64") [offP oN 24, .rfield 0 (lv aN)]) ret0))))

def u256ToBe32Params : List (MlS × ShapeHOL) := [(aN, shK 4), (oN, .one)]

theorem entry_u256_to_be32 : fnEntry Guest.Software.guestFn_u256_to_be32 =
    (nm "u256_to_be32", u256ToBe32Params, u256ToBe32Body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_to_be32 :
    guestCode (nm "u256_to_be32") = some (u256ToBe32Params, u256ToBe32Body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 87) (by decide)) ⟨_, rfl⟩
    entry_u256_to_be32

/-- A call `g(p + c, e)` of an 8-byte writer, `c + 8 ≤ n`, inside the buffer `[P, P + n)`. -/
theorem callFoot8 {g p : MlS} (hg : FootSpec σ X g (BufPreK 0 8) (BufRK 0 8)) {P : BitVec 64}
    {n c : Nat} (hc : c + 8 ≤ n) (hPn : P.toNat + n ≤ scratchEnd) {e : ExpHOL 64}
    {Rf : BitVec 64 → Prop} (hR : ∀ a, Overlap P.toNat n a → Rf a) {s0 : State σ}
    {L : Locals → Prop} (hLp : ∀ m, L m → m.lookup p = some (.val (.word P))) :
    HoareG σ X (LPre Rf s0 L) (callD g [offP p c, e]) (LP Rf s0 L) := by
  refine hoareG_callFoot hg fun t _ hpre vs hvs => ?_
  obtain ⟨v1, vs', rfl, h1, -⟩ := evs_cons_inv hvs
  rw [ev_offP (hLp _ hpre.1)] at h1
  cases h1
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hw : (P + BitVec.ofNat 64 c).toNat = P.toNat + c := toNat_addc (by omega)
  refine ⟨⟨_, rfl, by rw [hw]; omega⟩, fun a ⟨D, hD, hov⟩ => ?_⟩
  cases hD
  rw [hw] at hov
  exact hR a (overlap_mono hov (by omega) (by omega))

theorem foot_u256_to_be32 (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "u256_to_be32") (BufPreK 1 32) (BufRK 1 32) := by
  refine footSpec_of_hoareG fun vs bd callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, -, hB', -, hlb⟩ := lookupCode_two code_u256_to_be32 (by decide) hl
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O', hO', hb⟩ := hP
  cases hO'
  have hse : scratchEnd < 2 ^ 63 := by decide
  let Rf := BufRK 1 32 [A, .val (.word O)]
  have hR : ∀ a, Overlap O.toNat 32 a → Rf a := fun a h => ⟨O, rfl, h⟩
  let Lo : Locals → Prop := fun m => m.lookup oN = some (.val (.word O))
  refine hoareG_conseq (P := LPre Rf s0 Lo) (Q := LP Rf s0 (fun _ => True)) ?_
    (fun t _ ht => by subst t; exact lpre_init (by rw [hloc]; exact hlb)) fun _ _ _ _ h => h.1
  have hst := foot_st_be64 (σ := σ) hC hA
  refine hoareG_seqL (L2 := Lo) ?_
    (hoareG_seqL (callFoot8 hst (by omega) hb hR fun _ h => h)
    (hoareG_seqL (callFoot8 hst (by omega) hb hR fun _ h => h)
    (hoareG_seqL (callFoot8 hst (by omega) hb hR fun _ h => h)
    (hoareG_seqL (callFoot8 hst (by omega) hb hR fun _ h => h) hoareG_returnL))))
  refine hoareG_ite ?_ (hoareG_skip fun t _ h => ⟨h.1.2, fun _ => h.1.1, fun _ h => nomatch h⟩)
  refine hoareG_pre (P := LPre Rf s0 Lo) ?_ fun _ _ h => h.1
  have hbs := foot_bswap64 (σ := σ) (X := X) hC
  have hcall : ∀ {L : Locals → Prop} (args : List (ExpHOL 64)), ∀ s : State σ, InCtx s X →
      LPre Rf s0 L s → ∀ vs, evs s args = some vs → True ∧ ∀ a, NoFoot vs a → Rf a :=
    fun _ _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩
  refine hoareG_decCallFoot (L' := fun _ _ => False) (footRet_of_foot hbs) (hcall _) ?_
    (fun _ _ _ h => h.elim)
  intro s' _ v _ hm _ _ hsh
  obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hsh
  -- after `var w`: `out = O` and `w` a word
  let Lw : Locals → Prop := fun m' => m'.lookup oN = some (.val (.word O)) ∧
    ∃ W : BitVec 64, m'.lookup wN = some (.val (.word W))
  have hlo : ∀ m', Lw m' → m'.lookup oN = some (.val (.word O)) := fun _ h => h.1
  have hok : ∀ c, c < 32 → StOK (σ := σ) Lw 32 [(.w, c, lv wN)] := by
    intro c hc x hx
    simp only [List.mem_singleton] at hx
    subst hx
    exact ⟨hc, fun _ => oneWordL_lv fun _ h => h.2⟩
  have hstw : ∀ c, c < 32 → HoareG σ X (LPre Rf s0 Lw) (stP oN .w c (lv wN)) (LP Rf s0 Lw) :=
    fun c hc => hoareG_stP hA hlo hc (by omega) hR
      (fun _ => (hok c hc (.w, c, lv wN) (by simp)).2 rfl)
  have hbsA : ∀ k, HoareG σ X (LPre Rf s0 Lw) (callTo wN (nm "bswap64") [.rfield k (lv aN)])
      (LP Rf s0 Lw) := fun k =>
    hoareG_callAFoot (footRet_of_foot hbs) (hcall _) fun s _ v hL _ _ hval => by
      obtain ⟨W', hW'⟩ := hL.2
      obtain ⟨w', rfl⟩ := valid_word hW' hval
      exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1, w', lookup_update_self _ _ _⟩
  refine hoareG_preL (L' := Lw) ?_ fun m' h => ⟨by rw [h, lookup_update_ne _ _ (by decide)]; exact hm,
    W, by rw [h]; exact lookup_update_self _ _ _⟩
  exact hoareG_seqL (hstw 0 (by decide)) (hoareG_seqL (hbsA 2)
    (hoareG_seqL (hstw 8 (by decide)) (hoareG_seqL (hbsA 1)
    (hoareG_seqL (hstw 16 (by decide)) (hoareG_seqL (hbsA 0)
    (hoareG_seqL (hstw 24 (by decide)) hoareG_returnL))))))

def sigU256ToBe32 : Sig := { params := [.any, .buf 32], grows := false }

theorem summ_u256_to_be32 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "u256_to_be32") sigU256ToBe32 :=
  summ_of_footK hH hT rfl (i := 1) rfl (by decide) (foot_u256_to_be32 hC hA)

end InitECandidate.Solver.MemSafe.Helpers
