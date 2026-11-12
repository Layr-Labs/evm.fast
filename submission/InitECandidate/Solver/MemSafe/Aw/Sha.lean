import InitECandidate.Solver.MemSafe.Aw.Chain

set_option autoImplicit false

/-!
# Straight-line writers into a window `[out, out + 32)`: the footprint of `sha256_pair`

`StB out p seen`: `p` is made of local assignments and declarations (never of `out`), byte stores at
`out + k` with `k < 32`, sequencing, and `return` only after a store (`seen`). Such a program writes
only cells `AbvR O`, and a returned run has `InD O` (the store that came first was in the domain).
This is the footprint spec `sha256_pair` lacks in the table (its `.buf 32` asks for `BufOK`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-- The offset `k < 32` if the address is `out` or `out + k`. -/
def offOf (out : MlS) : ExpHOL 64 → Option Nat
  | .var .local x => if x = out then some 0 else none
  | .op .add [.var .local x, .const c] =>
      if x = out ∧ c.toNat < 32 then some c.toNat else none
  | _ => none

def Stores : ProgHOL 64 → Bool
  | .skip => false
  | .dec _ _ _ b => Stores b
  | .assign _ _ _ => false
  | .seq a b => Stores a || Stores b
  | .storeByte _ _ => true
  | _ => false

def StB (out : MlS) : ProgHOL 64 → Bool → Bool
  | .skip, _ => true
  | .dec x _ _ b, seen => decide (x ≠ out) && StB out b seen
  | .assign .local x _, _ => decide (x ≠ out)
  | .seq a b, seen => StB out a seen && StB out b (seen || Stores a)
  | .storeByte a _, _ => (offOf out a).isSome
  | .return _, seen => seen
  | _, _ => false

/-- The invariant: `out` holds `O`, and `InD O` if a store has been seen. -/
def Lsb (out : MlS) (O : BitVec 64) (seen : Bool) (m : Locals) : Prop :=
  m.lookup out = some (.val (.word O)) ∧ (seen = true → InD O)

/-- A byte store at an address evaluating to `P + c`, `c < 32`: it lands in the domain, so `InD P`. -/
theorem hoareG_stBkZ (hA : AlignedDom X) (hT : DomBelow X) {ad : ExpHOL 64} {P : BitVec 64}
    {c : Nat} {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (hev : ∀ t : State σ, L t.locals → ev t ad = some (.val (.word (P + BitVec.ofNat 64 c))))
    (hD : P.toNat ≤ 2 ^ 60) (hc : c < 32) (hR : ∀ x, AbvR P x → Rf x) :
    HoareG σ X (LPre Rf s0 L) (.storeByte ad e) (LZ Rf s0 (fun m => L m ∧ InD P) Ret) := by
  have hw : (P + BitVec.ofNat 64 c).toNat = P.toNat + c := toNat_addc (by omega)
  refine hoareG_storeByte fun t hs hpre w x mem ha _ hst => ?_
  have hm := storeByte_mod hst
  rw [hev t hpre.1] at ha
  cases ha
  have hdX : X.memaddrs (panByteAlignHOL (P + BitVec.ofNat 64 c)) := hs.2.1 ▸ storeByte_dom hst
  have hal := hA _ hdX
  have hlt := hT _ hdX
  have hba := byteAlign_toNat (P + BitVec.ofNat 64 c)
  refine ⟨⟨⟨hpre.2.1, hpre.2.2.trans (hm.mono fun x ha' => ?_)⟩,
    fun _ => ⟨hpre.1, ?_⟩, fun _ h => nomatch h⟩, nb_none⟩
  · subst ha'
    exact hR _ ⟨hal, by omega⟩
  · show P.toNat < domTop + 8
    omega

theorem offOf_spec {out : MlS} {ad : ExpHOL 64} {c : Nat} (h : offOf out ad = some c) :
    c < 32 ∧ ∀ (t : State σ) (P : BitVec 64), t.locals.lookup out = some (.val (.word P)) →
      ev t ad = some (.val (.word (P + BitVec.ofNat 64 c))) := by
  unfold offOf at h
  split at h
  · rename_i x
    split at h
    · rename_i hx
      cases h
      subst hx
      refine ⟨by omega, fun t P hP => ?_⟩
      show ev t (lv x) = _
      rw [ev_lw hP]
      simp
    · cases h
  · rename_i x cc
    split at h
    · rename_i hx
      cases h
      obtain ⟨hx1, hx2⟩ := hx
      subst hx1
      refine ⟨hx2, fun t P hP => ?_⟩
      show ev t (.op .add [lv x, .const cc]) = _
      rw [ev_add2 (ev_lw hP) (show ev t (.const cc) = some (.val (.word cc)) from rfl)]
      congr 3
      rw [BitVec.ofNat_toNat]
      simp [BitVec.setWidth_eq]
    · cases h
  · cases h

theorem hoareG_stb (hA : AlignedDom X) (hT : DomBelow X) {out : MlS} {O : BitVec 64}
    (hO : O.toNat ≤ 2 ^ 60) {Rf : BitVec 64 → Prop} (hR : ∀ x, AbvR O x → Rf x) {s0 : State σ}
    :
    ∀ (p : ProgHOL 64) (seen : Bool), StB out p seen = true →
      HoareG σ X (LPre Rf s0 (Lsb out O seen)) p
        (LZ Rf s0 (Lsb out O (seen || Stores p)) (fun _ => InD O))
  | .skip, seen, _ => hoareG_skipZ (fun m h => by simpa [Stores] using h)
  | .dec x sh e b, seen, h => by
      simp only [StB, Bool.and_eq_true, decide_eq_true_eq] at h
      refine hoareG_decZ (L' := fun _ m' => Lsb out O (seen || Stores b) m') ?_ ?_
      · intro s hs hL v hv hsh
        refine hoareG_preZ (hoareG_stb (s0 := s0) hA hT hO hR b seen h.2) (fun m hm => ?_)
        subst hm
        exact ⟨by rw [lookup_update_ne _ _ h.1]; exact hL.1, hL.2⟩
      · intro m m' hL hL'
        refine ⟨by rw [lookup_resVarEq_ne _ _ h.1]; exact hL'.1, hL'.2⟩
  | .assign .local x e, seen, h => by
      simp only [StB, decide_eq_true_eq] at h
      refine hoareG_assignZ fun s hs hL v hv => ?_
      refine ⟨by rw [lookup_update_ne _ _ h]; exact hL.1, ?_⟩
      simpa [Stores] using hL.2
  | .seq a b, seen, h => by
      simp only [StB, Bool.and_eq_true] at h
      have h2 := hoareG_seqZ (hoareG_stb (s0 := s0) hA hT hO hR a seen h.1)
        (hoareG_stb (s0 := s0) hA hT hO hR b (seen || Stores a) h.2)
      have e : ((seen || Stores a) || Stores b) = (seen || Stores (a.seq b)) := by
        simp [Stores, Bool.or_assoc]
      rw [e] at h2
      exact h2
  | .storeByte ad e, seen, h => by
      simp only [StB] at h
      obtain ⟨c, hc⟩ := Option.isSome_iff_exists.mp h
      obtain ⟨hc32, hev⟩ := offOf_spec (σ := σ) hc
      have h1 := hoareG_stBkZ (c := c) (e := e) (L := Lsb out O seen) (Ret := fun _ => InD O) hA hT
        (ad := ad) (P := O) (s0 := s0) (Rf := Rf) (fun t hm => hev t O hm.1) hO hc32 hR
      refine hoareG_postZ h1 (fun m hm => ⟨hm.1.1, fun _ => hm.2⟩) (fun v hv => hv)
      
  | .return e, seen, h => by
      simp only [StB] at h
      subst h
      exact hoareG_returnZ fun s hs hL v hv => hL.2 rfl
  | .assign .global _ _, _, h => by simp [StB] at h
  | .primitive .., _, h => by simp [StB] at h
  | .store .., _, h => by simp [StB] at h
  | .store32 .., _, h => by simp [StB] at h
  | .ite .., _, h => by simp [StB] at h
  | .while .., _, h => by simp [StB] at h
  | .break, _, h => by simp [StB] at h
  | .continue, _, h => by simp [StB] at h
  | .call .., _, h => by simp [StB] at h
  | .decCall .., _, h => by simp [StB] at h
  | .extCall .., _, h => by simp [StB] at h
  | .raise .., _, h => by simp [StB] at h
  | .shMemLoad .., _, h => by simp [StB] at h
  | .shMemStore .., _, h => by simp [StB] at h
  | .tick, _, h => by simp [StB] at h
  | .annot .., _, h => by simp [StB] at h

def shaInA : MlS := nm "input_a"
def shaInB : MlS := nm "input_b"

def shaBody : ProgHOL 64 := (fnEntry Guest.Software.guestFn_sha256_pair).2.2.1

theorem code_sha256_pair : guestCode (nm "sha256_pair") =
    some ([(shaInA, .one), (shaInB, .one), (outN, .one)], shaBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_sha256_pair =
      (nm "sha256_pair", [(shaInA, .one), (shaInB, .one), (outN, .one)], shaBody, .one) := by
    unfold shaBody
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 96) (by decide)) ⟨_, rfl⟩ h

theorem shaBody_stb : StB outN shaBody false = true := by
  unfold shaBody
  cbv

/-- **`sha256_pair`** as a footprint writer: only `AbvR out` cells change, and `out` is in the domain. -/
theorem footRet_sha256_pair (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (hT : DomBelow X) :
    FootRet σ X (nm "sha256_pair") (fun vs => ∃ O : BitVec 64, argW vs 2 = some O ∧ O.toNat ≤ 2 ^ 60)
      (AbvArg 2) (fun vs _ => ∀ O : BitVec 64, argW vs 2 = some O → InD O) := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hA', hB', hC', hla, hlb, hlc⟩ :=
    lookupCode_three code_sha256_pair (by decide) (by decide) (by decide) hl
  obtain ⟨Va, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨Vb, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨O1, hO1, hb⟩ := hP
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  let Rf := AbvArg 2 [.val (.word Va), .val (.word Vb), .val (.word O)]
  have hR : ∀ x, AbvR O x → Rf x := fun x h => ⟨O, rfl, h⟩
  refine hoareG_conseq (P := LPre Rf s0 (Lsb outN O false))
    (Q := LZ Rf s0 (Lsb outN O (false || Stores shaBody)) (fun _ => InD O))
    (hoareG_stb (s0 := s0) hA hT hb hR shaBody false shaBody_stb)
    (fun t _ ht => by
      subst ht
      exact lpre_init ⟨by rw [hloc]; exact hlc, fun h => by simp at h⟩)
    fun r t _ _ h => ⟨h.1.1, fun v hv D hD => ?_⟩
  have : O = D := Option.some.inj hD
  subst this
  exact h.1.2.2 v hv

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.footRet_sha256_pair
