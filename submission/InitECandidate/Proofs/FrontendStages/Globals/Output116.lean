import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data116
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate96
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody116_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "arr",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "off"])

def globalBody116_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "arr",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "total")

def globalBody116_2 : Prog (BitVec 64) :=
.seq globalBody116_0 globalBody116_1

def globalBody116_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "total"])

def globalBody116_4 : Prog (BitVec 64) :=
.seq globalBody116_2 globalBody116_3

def globalBody116_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody116_6 : Prog (BitVec 64) :=
.seq globalBody116_4 globalBody116_5

def globalBody116_7 : Prog (BitVec 64) :=
.decCall ("total") (Flapjack.Shape.one) ("rlp_item_total_unchecked") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "off"]]) globalBody116_6

def globalBody116_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "count")) globalBody116_7

def globalBody116_9 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "count"])

def globalBody116_10 : Prog (BitVec 64) :=
.seq globalBody116_8 globalBody116_9

def globalBody116_11 : Prog (BitVec 64) :=
.dec ("off") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody116_10

def globalBody116_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody116_11

def globalBody116_13 : Prog (BitVec 64) :=
.decCall ("arr") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "count", Flapjack.Exp.const 16#64]]) globalBody116_12

def globalBody116_14 : Prog (BitVec 64) :=
.decCall ("count") (Flapjack.Shape.one) ("rlp_list_count") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) globalBody116_13

def globalData116 : Decl (BitVec 64) :=
.function { name := "rlp_list_to_slices", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody116_14, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput116 := Pancake.PanLang.declToHOL globalData116
end InitECandidate.Proofs.FrontendStages.Declarations
