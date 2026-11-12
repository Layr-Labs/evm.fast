import InitECandidate.Solver.MemSafe.Shards.BaseCaps
import InitECandidate.Solver.MemSafe.HtabEntries.NewScratchSpec
import InitECandidate.Solver.MemSafe.HtabEntries.Truncate
import Guest.SoftwareAst

/-!
# The base of the fold with the hash-table constructor entries

`newTab`: the 13 constant instances of `htab_new(KL, CP)` that `Sigs.guestSigs` lists, with
result `fits (ptr tHTh)` (`HtabEntries.csumm_htab_new`); `htab_new_scratch(20, 4)` with result
`fits (ptr tHTs)` (`HtabEntries.csumm_htab_new_scratch`). Their skeletons (the same instances
with the result unconstrained and `grows := false`) are checked by the checker against
`baseCTab` (`newSkel_ok`, by `cbv` and `decide +kernel` like the shards).

`baseHCTab := newTab ++ baseCTab`, sound for every lawful hook family with `GuestHooks` and
`HtabHooks` (`baseHCTab_sound`).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open Flapjack.Pancake.PanLang (MlS ProgHOL)

/-- The `htab_new` instances `(key_len, cap)` of the guest. -/
def newInst : List (Nat × Nat) :=
  [(20, 8), (20, 16), (20, 64), (20, 256), (28, 64), (32, 8), (32, 16), (32, 64), (52, 8),
   (52, 16), (52, 64), (52, 256), (60, 64)]

/-- The heap header type of a key length (interface rev. 6). -/
def hdrOfKL : Nat → Nat
  | 28 => tHTh28
  | 32 => tHTh32
  | 52 => tHTh52
  | 60 => tHTh60
  | _ => tHTh20

def newSig (q : Nat × Nat) : Sig := ⟨[.eq q.1, .eq q.2], [.fits (.ptr (hdrOfKL q.1))], [], true⟩
def newSkelSig (q : Nat × Nat) : Sig := ⟨[.eq q.1, .eq q.2], [], [], false⟩

def newSkel : List MCand :=
  newInst.map fun q => MCand.ofPair (nm "htab_new") (declPair Guest.Software.guestFn_htab_new)
    (newSkelSig q) []

/-- The constructor entries. -/
def newTab : CTab := newInst.map fun q => (nm "htab_new", newSig q, [])

theorem newSkel_ok : chkChunk Types.guestC baseCTab newSkel = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem newSkel_valid : ∀ e ∈ newSkel, e.Valid := by
  intro e he
  obtain ⟨q, -, rfl⟩ := List.mem_map.mp he
  exact MCand.valid_of (declPair_valid (List.getElem_mem (n := 128) (by decide)) ⟨_, rfl⟩) rfl _ _

theorem newInst_bounds : ∀ q ∈ newInst, 0 < q.1 ∧ q.1 ≤ 2 ^ 16 ∧ q.2 ≤ 2 ^ 20 := by decide

theorem newInst_hdr : ∀ q ∈ newInst, hdrOfKL q.1 ∈ hdrTys ∧
    (guestC.ty (hdrOfKL q.1)).region = .heap ∧ htKL (hdrOfKL q.1) = q.1 := by decide

/-- The skeleton of `htab_new_scratch(20, 4)` (frame-local `EV_DELETE` tables). -/
def scrSkelSig : Sig := ⟨[.eq 20, .eq 4], [], [], false⟩
def scrSig : Sig := ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩

def scrSkel : List MCand :=
  [MCand.ofPair (nm "htab_new_scratch") (declPair Guest.Software.guestFn_htab_new_scratch) scrSkelSig []]

theorem scrSkel_ok : chkChunk Types.guestC baseCTab scrSkel = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem scrSkel_valid : ∀ e ∈ scrSkel, e.Valid :=
  mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 129) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil

theorem scrTab_sound {σ : Type} {X : Ctx 64} {H : Hooks σ} (hF : FoldOK σ X guestC H)
    (hK : GuestHooks H) (hT : HtabHooks H) :
    CTabSound σ X guestC H [(nm "htab_new_scratch", scrSig, [])] := by
  have hsk := chkChunk_sound hF scrSkel baseCTab scrSkel_ok scrSkel_valid (baseCTab_sound hF hK)
  refine ctabSound_cons ctabSound_nil ?_
  exact csumm_htab_new_scratch hF hK.mono hT (by decide) (by decide) (by decide) (by decide)
    (hsk _ _ _ List.mem_cons_self)

theorem newTab_sound {σ : Type} {X : Ctx 64} {H : Hooks σ} (hF : FoldOK σ X guestC H)
    (hK : GuestHooks H) (hT : HtabHooks H) : CTabSound σ X guestC H newTab := by
  have hsk := chkChunk_sound hF newSkel baseCTab newSkel_ok newSkel_valid (baseCTab_sound hF hK)
  intro f sg cs hm
  obtain ⟨q, hq, he⟩ := List.mem_map.mp hm
  simp only [Prod.mk.injEq] at he
  obtain ⟨rfl, rfl, rfl⟩ := he
  obtain ⟨h1, h2, h3⟩ := newInst_bounds q hq
  obtain ⟨g1, g2, g3⟩ := newInst_hdr q hq
  refine csumm_htab_new hF hK.mono hT g1 g2 g3 h1 h2 h3 (hsk _ _ _ ?_)
  -- the skeleton entry is in the table after the chunk
  have key : ∀ (es : List MCand) (tab : CTab) (e : MCand), e ∈ es →
      (e.f, e.sg, e.caps) ∈ chunkTab tab es := by
    intro es
    induction es with
    | nil => intro _ _ h; cases h
    | cons e' es ih =>
        intro tab e h
        unfold chunkTab
        rw [List.foldl_cons]
        rcases List.mem_cons.mp h with rfl | h
        · have mono : ∀ (l : List MCand) (t : CTab) x, x ∈ t → x ∈ chunkTab t l := by
            intro l
            induction l with
            | nil => intro t x hx; exact hx
            | cons a l ih2 => intro t x hx; exact ih2 _ x (List.mem_cons_of_mem _ hx)
          exact mono es _ _ List.mem_cons_self
        · exact ih _ e h
  exact key newSkel baseCTab _ (List.mem_map.mpr ⟨q, hq, rfl⟩)

/-- The `htab_set` entries, one per header type (interface rev. 6: key `buf key_len`, all-cells
capabilities of the header type and the array types). -/
def setTab : CTab := hdrTys.map fun th => (nm "htab_set", setSig th, capsHT th)

theorem setTab_sound {σ : Type} {X : Ctx 64} {H : Hooks σ} (hF : FoldOK σ X guestC H)
    (hK : GuestHooks H) (hT : HtabHooks H) : CTabSound σ X guestC H setTab := by
  intro f sg cs hm
  obtain ⟨th, hth, he⟩ := List.mem_map.mp hm
  simp only [Prod.mk.injEq] at he
  obtain ⟨rfl, rfl, rfl⟩ := he
  exact csumm_htab_set hF hK.mono hT hth

/-- The `htab_truncate` entries, one per header type. -/
def truncTab : CTab := hdrTys.map fun th => (nm "htab_truncate", truncSig th, capsHT th)

theorem truncTab_sound {σ : Type} {X : Ctx 64} {H : Hooks σ} (hF : FoldOK σ X guestC H)
    (hT : HtabHooks H) : CTabSound σ X guestC H truncTab := by
  intro f sg cs hm
  obtain ⟨th, hth, he⟩ := List.mem_map.mp hm
  simp only [Prod.mk.injEq] at he
  obtain ⟨rfl, rfl, rfl⟩ := he
  exact csumm_htab_truncate hF hT hth

/-- The base of the fold: the table mutators and constructors, then `baseCTab`. -/
def baseHCTab : CTab :=
  setTab ++ truncTab ++ newTab ++ [(nm "htab_new_scratch", scrSig, [])] ++ baseCTab

theorem baseHCTab_sound {σ : Type} {X : Ctx 64} {H : Hooks σ} (hF : FoldOK σ X guestC H)
    (hK : GuestHooks H) (hT : HtabHooks H) : CTabSound σ X guestC H baseHCTab :=
  ctabSound_append (ctabSound_append (ctabSound_append (ctabSound_append (setTab_sound hF hK hT)
    (truncTab_sound hF hT)) (newTab_sound hF hK hT)) (scrTab_sound hF hK hT)) (baseCTab_sound hF hK)

end InitECandidate.Solver.MemSafe.Shards
