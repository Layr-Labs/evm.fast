import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify239
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body255_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body255_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body255_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r"))
  (Flapjack.Exp.const 0#64)) body255_0 body255_1

def body255_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64,
      Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r")),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"), Flapjack.Exp.const 8#64])])

def body255_4 : Prog (BitVec 64) :=
.seq body255_2 body255_3

def body255_5 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "db", Flapjack.Exp.var Flapjack.VarKind.local "hash"]) body255_4

def originalData255 : Decl (BitVec 64) :=
.function { name := "nodedb_lookup", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("hash", Flapjack.Shape.one)], body := body255_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData255 : Decl (BitVec 64) :=
.function { name := "nodedb_lookup", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("hash", Flapjack.Shape.one)], body := body255_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original255 := Pancake.PanLang.declToHOL originalData255
def simplified255 := Pancake.PanLang.declToHOL simplifiedData255
end InitECandidate.Proofs.FrontendStages.Declarations
