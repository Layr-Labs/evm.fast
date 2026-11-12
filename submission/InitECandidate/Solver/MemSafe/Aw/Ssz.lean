import InitECandidate.Solver.MemSafe.Aw.Chain

set_option autoImplicit false

/-!
# SSZ helpers as above-writers (target E)

`pack_bytes` (any length). The Merkle functions need a footprint spec for `sha256_pair` that does not
ask for a `BufOK` output window: see the README.
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

def cntN' : MlS := nm "count"

def packBody : ProgHOL 64 :=
  .dec cntN' .one (.shift .lsr (.op .add [lv nN, cw 31]) (cw 5))
    (.decCall bufN .one (nm "alloc") [.panop .mul [lv cntN', cw 32]]
      (.seq (callD (nm "memcpy") [lv bufN, lv (nm "p"), lv nN])
        (.seq (callD (nm "memzero") [.op .add [lv bufN, lv nN],
            .op .sub [.panop .mul [lv cntN', cw 32], lv nN]])
          (.return (.rstruct [lv bufN, lv cntN'])))))

theorem code_pack_bytes : guestCode (nm "pack_bytes") =
    some ([(nm "p", .one), (nN, .one)], packBody, .comb [.one, .one]) := by
  have h : fnEntry Guest.Software.guestFn_pack_bytes =
      (nm "pack_bytes", [(nm "p", .one), (nN, .one)], packBody, .comb [.one, .one]) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 192) (by decide)) ⟨_, rfl⟩ h

/-- After `memcpy(buf, p, n)`: the destination plus the length is in range. -/
def Mc (m : Locals) : Prop :=
  ∃ Bb N : BitVec 64, m.lookup bufN = some (.val (.word Bb)) ∧ m.lookup nN = some (.val (.word N)) ∧
    (N.toNat = 0 ∨ Bb.toNat + N.toNat ≤ domTop + 64)

theorem awSpec_pack_bytes {C : Cfg} {H : Hooks σ} (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) (hH : HooksLawful C H) (hTS : TagSlots C)
    (hAG : AllocGlobs C) :
    AWSpec σ X C H (nm "pack_bytes") [] (fun _ _ _ => True) (fun _ _ _ _ => True) := by
  refine awSpec_of_hoareG (PV := fun _ _ => True) hH hTS hAG ?_
  intro vs body callee rs hl s0 Γ h0 p hs hloc hK hG hp hB hPre
  rw [hC] at hl
  obtain ⟨rfl, -, A, Bn, rfl, hA', hB', hla, hlb⟩ := lookupCode_two code_pack_bytes (by decide) hl
  obtain ⟨P0, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hB'
  let a : AwE σ := ⟨C, H, [], s0, Γ, p, h0⟩
  have ha0 : ({ C := C, H := H, gw := [], s0 := s0, Γ0 := Γ, p0 := p, h0 := h0 } : AwE σ).h0 = h0 :=
    rfl
  have hs62 : domTop < 2 ^ 62 := by decide
  refine hoareG_conseq (P := APre a (fun m => Bd m nN 0 WW)) (Q := AQ a (fun _ => True) (fun _ => True)) ?_
    (fun t _ ht => by subst ht; exact ⟨awInv_init a hG hp hB, bd_wide (by rw [hloc]; exact hlb)⟩)
    (fun _ _ _ _ h => h)
  unfold packBody
  -- count = (n + 31) >>> 5
  refine hoareG_decA hK (L' := fun _ _ => False) ?_ (fun _ _ _ h => h.elim)
  intro s2 hs2 hL2 v2 hv2 hsh2
  obtain ⟨Cn, rfl⟩ := val_of_shapeEq_one hsh2
  refine hoareG_preA (L' := fun m => Bd m nN 0 WW ∧ Bd m cntN' 0 WW) ?_ (fun m hm => by
    subst hm
    exact ⟨bd_upd (by decide) hL2, bd_wd _ _ _⟩)
  -- buf = alloc(count * 32)
  refine hoareG_decCallAs' hK (asp_alloc hK hC) (Lk := fun m => (Bd m nN 0 WW ∧ Bd m cntN' 0 WW) ∧
    Bd m bufN h0 heapEnd) (L' := fun _ _ => False) ?_ ?_ ?_ (fun _ _ _ h => h.elim)
  · intro s hs hP vs hvs callee
    obtain ⟨C0, hc, -, -⟩ := hP.2.2
    rw [evs_cons (ev_mul2 (ev_lw hc) (ev_cw _ 32)) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact ⟨⟨bd_upd (by decide) hL.1, bd_upd (by decide) hL.2⟩, bd_new _ _ _ hq1 (by omega)⟩
  intro s3
  -- memcpy(buf, p, n)
  refine hoareG_seqA (L2 := fun m => ((Bd m nN 0 WW ∧ Bd m cntN' 0 WW) ∧ Bd m bufN h0 heapEnd) ∧ Mc m)
    (hoareG_callAs hK (asp_memcpy hK hC hA hT) ?_ ?_) ?_
  · intro s4 hs4 hP4 vs hvs callee
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    obtain ⟨Bb, hb, h1, h2⟩ := hP4.2.2
    obtain ⟨Nv, hn, -, -⟩ := hP4.2.1.1
    rw [ev_lw hb] at e1
    cases e1
    rw [ev_lw hn] at e3
    cases e3
    have hHE : heapEnd < 2 ^ 62 := by decide
    exact ⟨Bb, Nv, rfl, rfl, by omega, by omega⟩
  · intro s4 vs v st hL hvs hRet
    obtain ⟨v1, v2, v3, rfl, e1, e2, e3⟩ := evs_three hvs
    obtain ⟨Bb, hb, h1, h2⟩ := hL.2
    obtain ⟨Nv, hn, -, -⟩ := hL.1.1
    rw [ev_lw hb] at e1
    cases e1
    rw [ev_lw hn] at e3
    cases e3
    exact ⟨hL, Bb, Nv, hb, hn, hRet Bb Nv rfl rfl⟩
  -- memzero(buf + n, count * 32 - n)
  refine hoareG_seqA (L2 := fun _ => True)
    (hoareG_callAs hK (asp_memzero hK hC hA hT) ?_ (fun _ _ _ _ _ _ _ => trivial)) ?_
  · intro s4 hs4 hP4 vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨Bb, Nv, hb, hn, hbd⟩ := hP4.2.2
    obtain ⟨C0, hc, -, -⟩ := hP4.2.1.1.2
    rw [ev_add2 (ev_lw hb) (ev_lw hn)] at e1
    cases e1
    rw [ev_sub2 (ev_mul2 (ev_lw hc) (ev_cw _ 32)) (ev_lw hn)] at e2
    cases e2
    obtain ⟨Bb, hb', hh1, hh2⟩ := hP4.2.1.2
    rw [hb] at hb'
    cases hb'
    have hs64 : domTop + 64 < 2 ^ 62 := by decide
    have hHE : heapEnd < 2 ^ 62 := by decide
    have hDa : (Bb + Nv).toNat = Bb.toNat + Nv.toNat := by
      rcases hbd with h | h
      · rw [toNat_add2] <;> omega
      · rw [toNat_add2] <;> omega
    exact ⟨Bb + Nv, _, rfl, rfl, by omega, by rcases hbd with h | h <;> omega⟩
  · exact hoareG_returnA hK (fun _ _ _ _ _ => trivial)

end InitECandidate.Solver.MemSafe.Aw

#print axioms InitECandidate.Solver.MemSafe.Aw.awSpec_pack_bytes
