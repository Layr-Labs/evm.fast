import InitECandidate.Solver.MemSafe.Ini.Eff

/-!
# `keccak256(p, n, mpt_hash_scratch)` inside a run: its net effect (`Eff`)
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
open InitECandidate.Solver.Spec.Mpt (gKst gKpad)
open InitECandidate.Solver.Spec.Mpt.Leaves (DomTop KOK KIn ret_keccak256)

variable {σ : Type} {X : Ctx 64}

/-- The keccak sponge and pad and the hash scratch buffer: aligned scalar buffers of `Γ0`. -/
structure KS (s0 : State σ) (Γ0 : Gam) (ks kp W : BitVec 64) : Prop where
  gks : gword s0 gKst = some ks
  gkp : gword s0 gKpad = some kp
  gW : gword s0 (nm "mpt_hash_scratch") = some W
  ks8 : ks.toNat % 8 = 0
  kp8 : kp.toNat % 8 = 0
  W8 : W.toNat % 8 = 0
  ksb : ks.toNat + 200 ≤ scratchEnd
  kpb : kp.toNat + 136 ≤ scratchEnd
  Wb : W.toNat + 32 ≤ scratchEnd
  cks : ∀ a, Overlap ks.toNat 200 a → SCell Types.guestC Γ0 a
  ckp : ∀ a, Overlap kp.toNat 136 a → SCell Types.guestC Γ0 a
  cW : ∀ a, Overlap W.toNat 32 a → SCell Types.guestC Γ0 a

theorem ks_of_G {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} (hG : G Types.guestC H Γ0 s0) :
    ∃ ks kp W, KS s0 Γ0 ks kp W := by
  obtain ⟨ks, h1, h2, h3, h4⟩ := scell_of_globA hG scalarGlob_kst
  obtain ⟨kp, h5, h6, h7, h8⟩ := scell_of_globA hG scalarGlob_kpad
  obtain ⟨W, h9, h10, h11, h12⟩ := scell_of_globA hG MptH.scalarGlob_mpt_hash_scratch
  exact ⟨ks, kp, W, ⟨h1, h5, h9, h2, h6, h10, h3, h7, h11, h4, h8, h12⟩⟩

/-- What a `keccak256` run gives. -/
def KecLc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop :=
  fun vs s r t =>
    (((∀ v, r = .returned v → ∀ (P N O ks kp : BitVec 64),
        vs = [.val (.word P), .val (.word N), .val (.word O)] → KOK s ks kp → O.toNat + 32 < 2 ^ 64 →
        Helpers.BWPost (fun a => KIn ks kp a ∨ Overlap O.toNat 32 a) s t) ∧
      (∀ R : BitVec 64 → Prop, ModifiesOnly R s.memory t.memory →
        ModifiesOnly (fun a => R a ∧ a.toNat % 8 = 0) s.memory t.memory)) ∧
    (t.memaddrs = s.memaddrs ∧ t.be = s.be)) ∧
    (Good (some r) → (∃ v, r = .returned v) ∨ Abortive r)

theorem funSpec_kecLc (hX : X.code.lookup = guestCode) (hA : ∀ x, X.memaddrs x → x.toNat % 8 = 0)
    (hD : DomTop X) : FunSpec σ X (nm "keccak256") KecLc :=
  FunSpec.and (FunSpec.and ((ret_keccak256 (σ := σ) hX hA hD).and (funSpec_aligned (σ := σ) hA _))
    (Helpers.funSpec_dom _)) (noExc_keccak256 hX)

theorem kec_eff {s0 s st : State σ} {Γ0 : Gam} {p0 : Ptrs} {H ks kp W P N : BitVec 64} {v : ValueHOL 64}
    (he : Eff s0 s Γ0 p0 H) (hK : KS s0 Γ0 ks kp W)
    (hR : KecLc [.val (.word P), .val (.word N), .val (.word W)] s (.returned v) st) :
    Eff s0 st Γ0 p0 H ∧ ∀ x : BitVec 64, ¬ SCell Types.guestC Γ0 x → st.memory x = s.memory x := by
  obtain ⟨⟨⟨hret, hal⟩, hdom, hbe⟩, -⟩ := hR
  have hKOK : KOK s ks kp := by
    refine ⟨?_, ?_, hK.ks8, hK.kp8, by have := hK.ksb; have : scratchEnd < 2 ^ 63 := by decide
                                       omega, by have := hK.kpb; have : scratchEnd < 2 ^ 63 := by decide
                                                 omega⟩
    · rw [gw_eq (he.glob gKst (by decide))]; exact hK.gks
    · rw [gw_eq (he.glob gKpad (by decide))]; exact hK.gkp
  obtain ⟨hgl, hmod⟩ := hret v rfl P N W ks kp rfl hKOK (by
    have := hK.Wb; have : scratchEnd < 2 ^ 63 := by decide
    omega)
  have hmod' := hal _ hmod
  have hfr : ∀ x : BitVec 64, ¬ SCell Types.guestC Γ0 x → st.memory x = s.memory x := by
    intro x hx
    apply hmod'
    rintro ⟨hr, h8⟩
    apply hx
    rcases hr with hin | hov
    · rcases hin with ⟨h1, h2⟩ | ⟨h1, h2⟩
      · exact hK.cks x (overlap_of_in h8 h1 h2)
      · exact hK.ckp x (overlap_of_in h8 h1 h2)
    · exact hK.cW x hov
  exact ⟨eff_trans he (fun g _ => by rw [hgl]) (by rw [hgl]; exact he.hp) le_rfl he.hi he.al hdom hbe
    (fun x hx => hfr x (fun h => hx (Or.inl h))), hfr⟩

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.ks_of_G
#print axioms InitECandidate.Solver.MemSafe.Ini.funSpec_kecLc
#print axioms InitECandidate.Solver.MemSafe.Ini.kec_eff
