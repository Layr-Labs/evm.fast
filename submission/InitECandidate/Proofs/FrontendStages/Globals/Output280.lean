import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data280
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate264
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody280_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "res"),
      some
        ("MptErr", "e",
          Flapjack.Prog.seq
            (Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"])
            (Flapjack.Prog.raise "MptErr" (Flapjack.Exp.var Flapjack.VarKind.local "e")))))
  "_mpt_delete_node_body"
  [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"]

def globalBody280_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody280_2 : Prog (BitVec 64) :=
.seq globalBody280_0 globalBody280_1

def globalBody280_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "res")

def globalBody280_4 : Prog (BitVec 64) :=
.seq globalBody280_2 globalBody280_3

def globalBody280_5 : Prog (BitVec 64) :=
.dec ("res") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody280_4

def globalBody280_6 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody280_5

def globalBody280_7 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("scratch_mark") ([]) globalBody280_6

def globalData280 : Decl (BitVec 64) :=
.function { name := "_mpt_delete_node", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one), ("level", Flapjack.Shape.one)], body := globalBody280_7, returnShape := (Flapjack.Shape.one) }
def globalOutput280 := Pancake.PanLang.declToHOL globalData280
end InitECandidate.Proofs.FrontendStages.Declarations
