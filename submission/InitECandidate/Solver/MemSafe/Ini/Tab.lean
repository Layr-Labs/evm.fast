import InitECandidate.Solver.MemSafe.Ini.Kec
import InitECandidate.Solver.Spec.Inv.HtabNewW

/-!
# `htab_new` and `htab_set` inside a run: their net effect and the table facts (`Tbl`)

`Tbl p0 A T I t H`: the table at `T` is well formed in `t`, has key length 32, its whole region lies in
the heap block `[p0.hp, H)` allocated since the entry, and every leaf value is `A + 16 j` for some `j < I`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

def Tbl (p0 : Ptrs) (A T : BitVec 64) (I : Nat) (t : State σ) (H : BitVec 64) : Prop :=
  Spec.Inv.TableWF t T ∧ Spec.Inv.hdr t.memory T 0 = BitVec.ofNat 64 32 ∧
    (∀ x, Spec.Inv.TableRegion t.memory T x → p0.hp ≤ x.toNat ∧ x.toNat < H.toNat) ∧
    (∀ w, Spec.Inv.LeafVal t.memory T w → ∃ j : Nat, j < I ∧ w = A + BitVec.ofNat 64 (16 * j))

theorem tbl_frame {p0 : Ptrs} {A T : BitVec 64} {I : Nat} {s st : State σ} {H : BitVec 64}
    (ht : Tbl p0 A T I s H) (hd : st.memaddrs = s.memaddrs) (hbe : st.be = s.be)
    (h : ∀ a, Spec.Inv.TableRegion s.memory T a → a.toNat % 8 = 0 → st.memory a = s.memory a) :
    Tbl p0 A T I st H := by
  obtain ⟨hwf, hkl, hreg, hleaf⟩ := ht
  obtain ⟨hwf', hreg'⟩ := Spec.Inv.tableWF_frameA hwf hd hbe h
  refine ⟨hwf', ?_, fun x hx => hreg x (hreg' ▸ hx), fun w hw => hleaf w ?_⟩
  · rw [Hooks.hdr_frameA hwf h (by decide : 0 < 88 ∧ 0 % 8 = 0)]; exact hkl
  · exact (Hooks.leafVal_frameA hwf h w).1 hw

theorem tbl_congr {p0 : Ptrs} {A T : BitVec 64} {I : Nat} {s st : State σ} {H : BitVec 64}
    (ht : Tbl p0 A T I s H) (hm : st.memory = s.memory) (hd : st.memaddrs = s.memaddrs)
    (hbe : st.be = s.be) : Tbl p0 A T I st H :=
  tbl_frame ht hd hbe (fun a _ _ => by rw [hm])

theorem eff_congr {s0 s st : State σ} {Γ0 : Gam} {p0 : Ptrs} {H : BitVec 64}
    (he : Eff s0 s Γ0 p0 H) (hm : st.memory = s.memory) (hg : st.globals = s.globals)
    (hd : st.memaddrs = s.memaddrs) (hbe : st.be = s.be) : Eff s0 st Γ0 p0 H :=
  ⟨fun g hg' => by rw [hg]; exact he.glob g hg', by rw [hg]; exact he.hp, he.lo, he.hi, he.al,
    hd.trans he.dom, hbe.trans he.be, fun x hx => by rw [hm]; exact he.mem x hx⟩

/-! ## `htab_new` -/

/-- The generalized `htab_new` spec (capacity up to `2^32`); main provides `Spec.Inv.funSpec_htab_newW`. -/
def HtabNewW (σ : Type) (X : Ctx 64) : Prop :=
  FunSpec σ X (nm "htab_new") (fun vs s r u => ∀ KL CP H0 : BitVec 64,
      vs = [.val (.word KL), .val (.word CP)] → s.globals.lookup Spec.Inv.hpN = some (.val (.word H0)) →
      H0.toNat ≤ heapEnd → H0.toNat % 8 = 0 → KL.toNat ≤ 2 ^ 16 → CP.toNat ≤ 2 ^ 32 →
      ∀ v, r = .returned v → Spec.Inv.NewPost s u KL H0 v)

def NewLc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop :=
  fun vs s r t =>
    ((∀ KL CP H0 : BitVec 64, vs = [.val (.word KL), .val (.word CP)] →
        s.globals.lookup Spec.Inv.hpN = some (.val (.word H0)) → H0.toNat ≤ heapEnd →
        H0.toNat % 8 = 0 → KL.toNat ≤ 2 ^ 16 → CP.toNat ≤ 2 ^ 32 →
        ∀ v, r = .returned v → Spec.Inv.NewPost s t KL H0 v) ∧
      (t.memaddrs = s.memaddrs ∧ t.be = s.be)) ∧
    (Good (some r) → (∃ v, r = .returned v) ∨ Abortive r)

theorem funSpec_newLc (hX : X.code.lookup = guestCode) (hW : HtabNewW σ X) :
    FunSpec σ X (nm "htab_new") NewLc :=
  FunSpec.and (FunSpec.and hW (Helpers.funSpec_dom _)) (noExc_htab_new hX)

theorem new_eff {s0 s st : State σ} {Γ0 : Gam} {p0 : Ptrs} {H C A : BitVec 64} {v : ValueHOL 64}
    (he : Eff s0 s Γ0 p0 H) (hC : C.toNat ≤ 2 ^ 32)
    (hR : NewLc [.val (.word (BitVec.ofNat 64 32)), .val (.word C)] s (.returned v) st) :
    ∃ H1, v = .val (.word H) ∧ Eff s0 st Γ0 p0 H1 ∧ Tbl p0 A H 0 st H1 := by
  obtain ⟨⟨hnew, hdom, hbe⟩, -⟩ := hR
  obtain ⟨rfl, hwf, hcnt, hkl, H1, hH1, hle, hhi, hal, hreg, hmod, hgl⟩ :=
    hnew (BitVec.ofNat 64 32) C H rfl he.hp he.hi he.al (by decide) hC v rfl
  have heH : H.toNat ≤ heapEnd := he.hi
  have hef : Eff s0 st Γ0 p0 H1 := by
    refine eff_trans he (fun g hg => hgl g hg) hH1 hle hhi hal hdom hbe ?_
    intro x hx
    apply hmod
    rintro ⟨h1, h2⟩
    apply hx
    right
    exact ⟨by have := he.lo; omega, by omega⟩
  refine ⟨H1, rfl, hef, hwf, hkl, (fun x hx => ?_), (fun w hw => ?_)⟩
  · obtain ⟨h1, h2⟩ := hreg x hx
    exact ⟨by have := he.lo; omega, by omega⟩
  · obtain ⟨j, hj, -⟩ := hw
    rw [hcnt] at hj
    exact absurd hj (by simp)

/-! ## `htab_set` -/

def SetLc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop :=
  fun vs s r t =>
    ((∀ T key val H0 : BitVec 64, vs = [.val (.word T), .val (.word key), .val (.word val)] →
        Spec.Inv.TableWF s T → s.globals.lookup Spec.Inv.hpN = some (.val (.word H0)) →
        H0.toNat ≤ heapEnd → H0.toNat % 8 = 0 →
        (∀ a, Spec.Inv.TableRegion s.memory T a → ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)) →
        key.toNat + (Spec.Inv.hdr s.memory T 0).toNat ≤ 2 ^ 64 →
        (∀ a : BitVec 64, key.toNat ≤ a.toNat → a.toNat < key.toNat + (Spec.Inv.hdr s.memory T 0).toNat →
          ¬ Spec.Inv.TableRegion s.memory T a ∧ ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)) →
        ∀ v, r = .returned v → Spec.Inv.SetPostK s t T val H0) ∧
      (t.memaddrs = s.memaddrs ∧ t.be = s.be)) ∧
    (Good (some r) → (∃ v, r = .returned v) ∨ Abortive r)

theorem funSpec_setLc (hX : X.code.lookup = guestCode) : FunSpec σ X (nm "htab_set") SetLc :=
  FunSpec.and (FunSpec.and (Spec.Inv.setSpecK hX) (Helpers.funSpec_dom _))
    (noExc_htabX hX _ (by simp [htabX]))

theorem mul16_eq (I : BitVec 64) : I * 16#64 = BitVec.ofNat 64 (16 * I.toNat) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat]
  simp [Nat.mul_comm]

theorem set_eff {s0 s st : State σ} {Γ0 : Gam} {p0 : Ptrs} {H W T A I : BitVec 64} {v : ValueHOL 64}
    (he : Eff s0 s Γ0 p0 H) (ht : Tbl p0 A T I.toNat s H)
    (hWb : W.toNat + 32 ≤ 2 ^ 64)
    (hWout : ∀ a : BitVec 64, W.toNat ≤ a.toNat → a.toNat < W.toNat + 32 →
      ¬ (p0.hp ≤ a.toNat ∧ a.toNat < heapEnd))
    (hR : SetLc [.val (.word T), .val (.word W), .val (.word (A + I * 16#64))] s (.returned v) st) :
    ∃ H1, Eff s0 st Γ0 p0 H1 ∧ Tbl p0 A T (I.toNat + 1) st H1 := by
  obtain ⟨⟨hset, hdom, hbe⟩, -⟩ := hR
  obtain ⟨hwf, hkl, hreg, hleaf⟩ := ht
  have hk32 : (Spec.Inv.hdr s.memory T 0).toNat = 32 := by rw [hkl]; rfl
  have hlo := he.lo
  obtain ⟨⟨hwf', -, hlv, H1, hH1, hle, hhi, hal, hmod, hregt, hgl⟩, hkl'⟩ :=
    hset T W (A + I * 16#64) H rfl hwf he.hp he.hi he.al
      (fun a ha ⟨h1, h2⟩ => by have := (hreg a ha).2; omega)
      (by rw [hk32]; exact hWb)
      (fun a h1 h2 => by
        rw [hk32] at h2
        have h3 := hWout a h1 h2
        refine ⟨fun hr => h3 ⟨(hreg a hr).1, by have := (hreg a hr).2; have := he.hi; omega⟩, ?_⟩
        rintro ⟨h4, h5⟩
        exact h3 ⟨by omega, h5⟩) v rfl
  have hef : Eff s0 st Γ0 p0 H1 := by
    refine eff_trans he (fun g hg => hgl g hg) hH1 hle hhi hal hdom hbe ?_
    intro x hx
    apply hmod
    rintro (hr | ⟨h1, h2⟩)
    · have := hreg x hr
      exact hx (Or.inr ⟨this.1, by omega⟩)
    · exact hx (Or.inr ⟨by omega, by omega⟩)
  refine ⟨H1, hef, hwf', by rw [hkl', hkl], (fun x hx => ?_), (fun w hw => ?_)⟩
  · rcases hregt x hx with hr | ⟨h1, h2⟩
    · exact ⟨(hreg x hr).1, by have := (hreg x hr).2; omega⟩
    · exact ⟨by omega, by omega⟩
  · rcases hlv w hw with h | h
    · obtain ⟨j, hj, hw'⟩ := hleaf w h
      exact ⟨j, by omega, hw'⟩
    · exact ⟨I.toNat, by omega, by rw [h, mul16_eq]⟩

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.funSpec_newLc
#print axioms InitECandidate.Solver.MemSafe.Ini.new_eff
#print axioms InitECandidate.Solver.MemSafe.Ini.funSpec_setLc
#print axioms InitECandidate.Solver.MemSafe.Ini.set_eff
