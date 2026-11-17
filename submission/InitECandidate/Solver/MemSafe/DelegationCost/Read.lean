import InitECandidate.Solver.MemSafe.DelegationCost.Decl
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.MemSafe.DelegationCost.Read
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.ArrayCost.Read InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
theorem classical_eval {s : PanSemStateFiniteExact 64 σ} {inst : DecidablePred s.toExact.memaddrs}
 {e : ExpHOL 64} {v : ValueHOL 64} (h : @evalHOLExact 64 σ _ s.toExact inst e = some v) :
 ev s e = some v := by
 have he : inst = (fun a => Classical.propDecidable (s.memaddrs a)) := Subsingleton.elim _ _
 subst inst
 exact h

def aliasPrefix (a y z : MlS) (shy : ShapeHOL) (ey B : ExpHOL 64) (i : MlS)
 (k : BitVec 64) (ss : List ShapeHOL) (tail : ProgHOL 64) : ProgHOL 64 :=
 .dec a .one (.op .add [B,.panop .mul [.var .local i,.const k]])
  (.dec y shy ey (.dec z (.comb (.one::ss)) (.load (.comb (.one::ss)) (.op .add [lv a,cw 0])) tail))

theorem alias_hit {s : PanSemStateFiniteExact 64 σ} {a y z i : MlS} {shy : ShapeHOL}
 {ey B : ExpHOL 64} {k : BitVec 64} {ss : List ShapeHOL} {tail : ProgHOL 64}
 (hya : y ≠ a) (hB : isBase i B = true)
 (hc : Completes s (aliasPrefix a y z shy ey B i k ss tail)) :
 ∃ w, scaledAddr B i k s = some w ∧ Hit s.memaddrs w := by
 obtain ⟨inst,va,ha,hc1⟩ := dec_completes hc
 have ha' := classical_eval ha
 obtain ⟨x,u,hx,hu,hv⟩ := Inv.ev_add2_inv ha'
 subst va
 have hscaled := eval_scaledAddr (fun a => Classical.propDecidable (s.memaddrs a)) hB ha'
 obtain ⟨inst2,vy,hy,hc2⟩ := dec_completes hc1
 obtain ⟨inst3,vz,hz⟩ := decl_source_eval hc2
 obtain ⟨w,hw,hhit⟩ := InitECandidate.Solver.MemSafe.FqCost.Read.eval_hit hz
 let t := setVarHOLFinite y vy (setVarHOLFinite a (.val (.word (x+u))) s)
 have hal : t.locals.lookup a = some (.val (.word (x+u))) := by
  simp [t,setVarHOLFinite,FUPDATE,hya,Ne.symm hya]
 have heval : ev t (.op .add [lv a,cw 0]) = some (.val (.word (x+u))) := by
  simpa only [BitVec.add_zero] using ev_add2 (s := t) (show ev t (lv a) = some (.val (.word (x+u))) from hal) (ev_cw t 0)
 have hw' := classical_eval hw
 have hwe : w = x+u := by
  have hh := heval.symm.trans hw'
  simpa only [Option.some.injEq,ValueHOL.val.injEq,HolWordLab.word.injEq] using hh.symm
 subst w
 exact ⟨x+u,hscaled,hhit⟩
#print axioms alias_hit
end InitECandidate.Solver.MemSafe.DelegationCost.Read
