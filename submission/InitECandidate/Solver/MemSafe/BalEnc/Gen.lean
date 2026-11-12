import InitECandidate.Solver.MemSafe.BalEnc.Callee
import InitECandidate.Solver.MemSafe.BalEnc.KeysO

set_option autoImplicit false

/-!
# Generalised callee lemmas for `build_block_access_list_rlp`

* `HkPre M`, `awSpec_htab_keys'M`, `tab_strideM`, `asp_htab_keysM`: `htab_keys` on a table whose stride is
  at least `M` (a multiple of 8 within 8 of the key length: 24 for the 20-byte account keys, 32 for slots).
* `asp_sort_fresh`: `sort_elems` of a fresh array of `E`-byte elements (`E ≤ M`).
* `asp_htab_getT`: `htab_get` on a table of header type `th`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

def HkPreM (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∀ T : BitVec 64, argW vs 0 = some T → s.memaddrs (T + BitVec.ofNat 64 8) ∧
    M ≤ (rd s.memory (T + BitVec.ofNat 64 8)).toNat

def HkPostM (M : Nat) (vs : List (ValueHOL 64)) (p : Ptrs) (v : ValueHOL 64) : Prop :=
  ∃ S0 : BitVec 64, M ≤ S0.toNat ∧ HkPost2 S0 vs p v

theorem awSpec_htab_keysM {C : Cfg} {H : Hooks σ} {X : Ctx 64} (M : Nat)
    (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) :
    AWSpec σ X C H (nm "htab_keys") [] (fun vs s _ => HkPreM M vs s)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPostM M vs p v) := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle hPre
  have hl' := hl
  rw [hC] at hl'
  obtain ⟨-, -, A, hvs, hA', hla⟩ := lookupCode_one code_htab_keys hl'
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hA'
  have hT0 : argW vs 0 = some T := by rw [hvs]; rfl
  obtain ⟨hd, h32⟩ := hPre T hT0
  obtain ⟨Γ', p', c1, c2, c3, c4, c5, c6, c7, c8, c9⟩ :=
    awSpec_htab_keys2 hC hA hT hH hTS hAG (rd s.memory (T + BitVec.ofNat 64 8)) vs body callee rs hl
      s hs hloc r hr v hv Γ h0 p hG hp hB h8 hb hle (fun T' hT'' => by
        have e : T = T' := Option.some.inj (hT0.symm.trans hT'')
        subst e
        unfold LdW
        rw [ev_load_one_of (by simp [ev, evalHOLExact]) hd]
        rw [mem_wd s.memory (T + BitVec.ofNat 64 8)])
  refine ⟨Γ', p', c1, c2, c3, c4, c5, c6, c7, c8, fun p2 hp2 => ?_⟩
  exact ⟨_, h32, c9 p2 hp2⟩

/-- A typed table of the entry typing: its stride cell is in the domain and at least `M`, where `M` is the
key length rounded up to a multiple of 8 (the stride is a multiple of 8 and at least the key length). -/
theorem tab_strideM {a : AwE σ} (hc : CsE a) {t : State σ} (hinv : AwInv a t)
    (hd : t.memaddrs = guestCtx.memaddrs) {T : BitVec 64} {th : Nat} (hth : th ∈ hdrTys) {M : Nat}
    (hM8 : M % 8 = 0) (hM1 : htKL th ≤ M) (hM2 : M < htKL th + 8) (hfit : Fits a.Γ0 (.ptr th) T) :
    t.memaddrs (T + BitVec.ofNat 64 8) ∧ M ≤ (rd t.memory (T + BitVec.ofNat 64 8)).toNat := by
  obtain ⟨Γ', p', hG, hp, hE, hS, -⟩ := hinv
  have hGc := csE_g hc hG
  obtain ⟨o, ho, hb, ht⟩ := hfit
  obtain ⟨o', ho', hb', ht', hsz⟩ := hE o ho
  have hko : hkOf o'.ty = .tab := by rw [ht', ht]; exact hkOf_of_tab hth
  obtain ⟨pp, hpp, hord, hL, hF, hTg, hGl, hW⟩ := hGc
  have hw : tabW Γ' t o' := htabHooks_guestR.get Γ' t o' hko (hW o' ho')
  obtain ⟨-, hGam, hwf, -, -, hkl⟩ := hw
  have hGc' := csE_g hc hG
  have hmin := (hL.1 o' ho').2.2.2.1
  rw [ht', ht] at hmin
  have hmin88 : 88 ≤ (guestC.ty th).minSz := by
    have := hdr_minSz th hth
    omega
  have hbT : o'.base = T := hb'.trans hb
  constructor
  · have := cell_dom hGc' hd ho' (k := 1) (by unfold Obj.HasSlot; omega)
    have e : o'.cell 1 = T + BitVec.ofNat 64 8 := by unfold Obj.cell; rw [hbT]
    rw [e] at this
    exact this
  · obtain ⟨-, -, -, -, h5, h6, -⟩ := hwf.1
    unfold KLOK at hkl
    rw [ht', ht] at hkl
    have hKLv : (Spec.Inv.hdr t.memory o'.base 0).toNat = htKL th := by
      rw [hkl, BitVec.toNat_ofNat, Nat.mod_eq_of_lt]
      have := HtabEntries.htKL_le th
      omega
    rw [hbT] at h5 h6 hKLv
    show M ≤ (Spec.Inv.hdr t.memory T 8).toNat
    omega


/-- The result of `htab_keys` on a table of stride at least `M`: `<out, n>` with `out` in
`[p0.hp, heapEnd]` and, for `n < 2^63`, `n * M ≤ domTop + 64` and the array inside the heap. -/
def KeysRetM (M : Nat) (a : AwE σ) (v : ValueHOL 64) : Prop :=
  ∃ O N : BitVec 64, v = .rStruct [.val (.word O), .val (.word N)] ∧ a.p0.hp ≤ O.toNat ∧
    O.toNat ≤ heapEnd ∧
    (N.toNat < 2 ^ 63 → N.toNat * M ≤ domTop + 64 ∧ O.toNat + N.toNat * M + 8 ≤ heapEnd)

theorem keysRetM_of_post {M : Nat} {a : AwE σ} {vs : List (ValueHOL 64)} {p : Ptrs} {v : ValueHOL 64}
    (hp : a.p0.hp ≤ p.hp) (h : HkPostM M vs p v) : KeysRetM M a v := by
  obtain ⟨S0, hS0, O, N, h1, h2, h2', h3⟩ := h
  have hmul : N.toNat * M ≤ N.toNat * S0.toNat := Nat.mul_le_mul_left _ hS0
  refine ⟨O, N, h1, le_trans hp h2, h2', fun hN => ?_⟩
  have := h3 hN
  omega

/-- `htab_keys` on a table of the entry typing. -/
theorem asp_htab_keysM {a : AwE σ} (hK : AwOK a) (hc : CsE a) {th : Nat} (hth : th ∈ hdrTys) {M : Nat}
    (hM8 : M % 8 = 0) (hM1 : htKL th ≤ M) (hM2 : M < htKL th + 8) :
    ASp a guestCtx (nm "htab_keys")
      (fun vs s => ∃ T : BitVec 64, vs = [.val (.word T)] ∧ Fits a.Γ0 (.ptr th) T ∧
        s.memaddrs = guestCtx.memaddrs)
      (fun _ v _ => KeysRetM M a v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hAW : AWSpec σ guestCtx a.C a.H (nm "htab_keys") [] (fun vs s _ => HkPreM M vs s)
      (fun vs s v _ => ∀ p, ptrsOf s = some p → HkPostM M vs p v) := by
    rw [hc.C, hc.H]
    exact awSpec_htab_keysM M hF.hX hF.hal domBelow_guestCtx hooksLawful_cs tagSlots_cs allocGlobs_cs
  refine asp_pre_inv (asp_of_aw2 hK hAW (fun g hg => absurd hg (by simp))
    (Ret := fun _ v _ => KeysRetM M a v) (fun vs s v t ⟨p1, hp1, hle1⟩ hpost =>
      keysRetM_of_post hle1 (hpost p1 hp1))) ?_
  intro vs s hinv ⟨T, hvs, hfit, hd⟩
  subst hvs
  intro T' hT'
  have e : T = T' := Option.some.inj hT'
  subst e
  exact tab_strideM hc hinv hd hth hM8 hM1 hM2 hfit

/-- **`sort_elems` on a fresh array of `E`-byte elements** (`E ≤ M`), after `htab_keys` at stride `M`. -/
theorem asp_sort_fresh {a : AwE σ} (hK : AwOK a) (hc : CsE a) {E M : Nat} (hEM : E ≤ M) (hE8 : E < 2 ^ 20) (hM0 : 2 ≤ M) :
    ASp a guestCtx (nm "sort_elems")
      (fun vs _ => ∃ O K Kd Tm : BitVec 64, vs = [.val (.word O), .val (.word K),
          .val (.word (BitVec.ofNat 64 E)), .val (.word Kd), .val (.word Tm)] ∧
        a.h0 ≤ O.toNat ∧ (K.toNat < 2 ^ 63 → K.toNat * M ≤ domTop + 64 ∧
          O.toNat + K.toNat * M + 8 ≤ heapEnd))
      (fun _ _ _ => True) := by
  have hSort : AWSpecG σ guestCtx a.C a.H (nm "sort_elems") []
      (fun vs s Γ h0 => SrtPre a.C vs s Γ h0) (fun _ _ _ _ => True) := by
    rw [hc.C, hc.H]; exact sort_cs
  refine asp_of_awG2 hK hSort (fun g hg => absurd hg (by simp)) ?_ (fun _ _ _ _ _ => trivial)
  intro vs s Γ' hG hE ⟨O, K, Kd, Tm, hvs, ho, hbig⟩ P N E' hP hN hE' hNb
  subst hvs
  have e1 : O = P := Option.some.inj hP
  have e2 : K = N := Option.some.inj hN
  have e3 : BitVec.ofNat 64 E = E' := Option.some.inj hE'
  subst e1 e2 e3
  have hEt : (BitVec.ofNat 64 E).toNat = E := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  obtain ⟨b1, b2⟩ := hbig hNb
  have hmul : K.toNat * E ≤ K.toNat * M := Nat.mul_le_mul_left _ hEM
  have hse : heapEnd ≤ scratchEnd := by decide
  have hd : domTop = 2 ^ 40 := rfl
  refine ⟨?_, by rw [hEt]; omega, by rw [hEt]; omega, fun x hx => Or.inl ?_⟩
  · have := Nat.mul_le_mul_left K.toNat hM0
    omega
  · obtain ⟨hx1, hx2, hx3⟩ := hx
    have h8 : a.h0 % 8 = 0 := hK.h8
    simp only [hEt] at hx2 hx3
    omega


/-- **`htab_get` on a table of header type `th`**: the found value fits the value kind of `th`, a missing
key gives `0`. -/
theorem asp_htab_getT {a : AwE σ} (hK : AwOK a) (hc : CsE a) {th : Nat} (hth : th ∈ hdrTys) :
    ASp a guestCtx (nm "htab_get")
      (fun vs _ => ∃ T K : BitVec 64, vs = [.val (.word T), .val (.word K)] ∧
        Fits a.Γ0 (.ptr th) T)
      (fun _ v _ => ∀ A B : BitVec 64, v = .rStruct [.val (.word A), .val (.word B)] →
        (A ≠ 0 → Fits a.Γ0 (valK th) B) ∧ (A = 0 → B = 0)) := by
  have hC := SourceCost.guestCtx_code
  have hJ := HtabEntries.funSpec_get_j (σ := σ) hC
  have hF := Bal.funSpec_get_fits (σ := σ) (th := th) hth
  have hM := funSpec_get_miss (σ := σ) (X := guestCtx) hC
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  subst hv
  obtain ⟨T, K, rfl, hfit⟩ := hP
  obtain ⟨hm, hgl, hd, hbe, -⟩ := hJ _ body callee rs hl s hs hloc _ hr
  have hgs : (evaluateHOLFiniteState s body).2.globals = s.globals :=
    AllocImpl.hfm_ext (funext hgl)
  refine ⟨awInv_same hK hinv hm hgs hd hbe, ?_⟩
  obtain ⟨Γ', p', hG, hp, hE, hS, -⟩ := hinv
  have hGc := csE_g hc hG
  intro A B hAB
  refine ⟨fun hA => ?_, fun hA => hM _ body callee rs hl s hs hloc _ hr _ rfl A B hAB hA⟩
  have h1 := hF _ body callee rs hl s hs hloc _ hr Γ' hGc T K rfl (fits_ext hE hfit) _ rfl A B hAB hA
  exact fits_sub hS (obj_pos hGc) h1

end InitECandidate.Solver.MemSafe.BalEnc
