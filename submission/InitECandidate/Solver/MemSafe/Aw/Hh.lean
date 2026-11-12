import InitECandidate.Solver.MemSafe.Aw.Eh

set_option autoImplicit false

/-!
# `header_hash` as an above-writer (target D)

`mark = heap_mark(); e = encode_header(h); keccak256(e.0, e.1, out); heap_release(mark); return 0`.
`out` is a 32-byte window of the caller: at or above `h0`, inside `[h0, heap_ptr)`.
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

def eN : MlS := nm "e"

def hhBody : ProgHOL 64 :=
  .decCall markN .one (nm "heap_mark") []
    (.decCall eN (.comb [.one, .one]) (nm "encode_header") [lv hN]
      (.seq (callD (nm "keccak256") [.rfield 0 (lv eN), .rfield 1 (lv eN), lv outN])
        (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0)))))

theorem code_header_hash : guestCode (nm "header_hash") =
    some ([(hN, .one), (outN, .one)], hhBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_header_hash =
      (nm "header_hash", [(hN, .one), (outN, .one)], hhBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 230) (by decide)) ⟨_, rfl⟩ h

/-- The output window: at or above `h0`, inside the allocated heap. -/
def HhPre (vs : List (ValueHOL 64)) (s : State σ) (h0 : Nat) : Prop :=
  ∃ O : BitVec 64, argW vs 1 = some O ∧ h0 ≤ O.toNat ∧
    ∃ p : Ptrs, ptrsOf s = some p ∧ O.toNat + 32 ≤ p.hp

def Hh1 (O : BitVec 64) (p0hp : Nat) (m : Locals) : Prop :=
  m.lookup outN = some (.val (.word O)) ∧ MkB p0hp markN m

theorem hh1_e {O : BitVec 64} {p0hp : Nat} {m : Locals} {v : ValueHOL 64}
    (h : Hh1 O p0hp m) : Hh1 O p0hp (m.update (eN, v)) :=
  ⟨by rw [lookup_update_ne _ _ (by decide)]; exact h.1, mkb_upd (by decide) h.2⟩

theorem awSpec_header_hash {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hH : HooksLawful C H) (hTS : TagSlots C) (hAG : AllocGlobs C)
    (hEnc : AWSpec σ X C H (nm "encode_header") [] (fun _ _ _ => True) (fun _ _ _ _ => True))
    (hKec : CSumm σ X C H (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ []) :
    AWSpec σ X C H (nm "header_hash") [] HhPre (fun _ _ _ _ => True) := by
  refine awSpec_of_hoareG (PV := fun _ _ => True) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bo, rfl, hA', hB', hla, hlb⟩ :=
    lookupCode_two code_header_hash (by decide) hl
  obtain ⟨Hv, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O1, hO1, ho1, p1, hp1, ho2⟩ := hPre
  have hOO : O = O1 := Option.some.inj hO1
  subst hOO
  rw [hp] at hp1
  cases hp1
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  refine hoareG_conseq (P := APre a (fun m => m.lookup outN = some (.val (.word O))))
    (Q := AQ a (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨awInv_init a hG hp hB, by rw [hloc]; exact hlb⟩) (fun _ _ _ _ h => h)
  unfold hhBody
  -- mark = heap_mark()
  refine hoareG_decCallAs' hK (asp_mark hK hC) (Lk := Hh1 O p.hp) (L' := fun _ _ => False)
    ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    rw [evs_nil] at hvs
    cases hvs
    rfl
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨w, p', rfl, hp', hw, h1, h2, h3⟩ := hRet
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL,
      w, lookup_update_self _ _ _, h1, h2, h3⟩
  intro s
  -- e = encode_header(h)
  refine hoareG_decCallAs' hK (asp_of_aw hK hEnc (fun g hg => absurd hg (by simp))
    (fun _ _ _ _ _ => trivial)) (Lk := Hh1 O p.hp) (L' := fun _ _ => False)
    (fun _ _ _ _ _ _ => trivial) (fun s vs v st hL hvs hRet hsh => hh1_e hL) ?_
    (fun _ _ _ h => h.elim)
  intro s2
  -- keccak256(e.0, e.1, out)
  refine hoareG_seqA (L2 := Hh1 O p.hp) ?_ ?_
  · refine hoareG_callAs hK (asp_of_cs hK hKec rfl (fun g hg => absurd hg (by simp))) ?_
      (fun _ _ _ _ hL _ _ => hL)
    intro s3 hs3 hP3 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    rw [ev_lw hP3.2.1] at e3
    cases e3
    obtain ⟨Γ', p', hG', hp', -, -, -, hmono, -⟩ := hP3.1
    refine ⟨rfl, p', (AllocImpl.ptrsOf_congr (s := s3) rfl).trans hp', ?_⟩
    intro i pt v hpt hv
    have hm1 : p.hp ≤ p'.hp := hmono.1
    cases i with
    | zero =>
        have : pt = PT.any := by simpa using hpt.symm
        subst this
        trivial
    | succ j =>
        cases j with
        | zero =>
            have : pt = PT.any := by simpa using hpt.symm
            subst this
            trivial
        | succ k =>
            cases k with
            | zero =>
                have : pt = PT.buf 32 := by simpa using hpt.symm
                subst this
                have hv' : v = .val (.word O) := by simpa using hv.symm
                subst hv'
                exact ⟨O, rfl, ho1, by omega⟩
            | succ m => simp at hpt
  · refine hoareG_seqA (L2 := fun _ => True) ?_ ?_
    · refine hoareG_callAs hK (asp_release hK hC) ?_ (fun _ _ _ _ _ _ _ => trivial)
      intro s4 hs4 hP4 vs hvs callee
      obtain ⟨w, hw, h1, h2, h3⟩ := hP4.2.2
      rw [evs_cons (ev_lw hw) evs_nil] at hvs
      cases hvs
      exact ⟨w, rfl, h1, h2, h3⟩
    · exact hoareG_returnA hK (fun _ _ _ _ _ => trivial)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_header_hash
