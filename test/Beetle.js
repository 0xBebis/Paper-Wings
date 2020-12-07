const { expect } = require("chai");

describe("Creature Abstract", function() {

  let Beetle;
  let testBeetle;
  let owner;

  beforeEach(async function () {
    Beetle = await ethers.getContractFactory("Beetle");
    testBeetle = await Beetle.deploy();
  })

  describe("Setter", function () {

    it("Should Create a Creature", async function () {

      await testBeetle.createNewCreature("Jeff");
      const id = await testBeetle.getCreatureId(0);
      expect(id).to.not.equal(0);

      const newStruct = await testBeetle.viewCreature(id);

    });
  })
})
